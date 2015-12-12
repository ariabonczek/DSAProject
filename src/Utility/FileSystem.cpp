#include "FileSystem.hpp"

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include <assimp\Importer.hpp>
#include <assimp\postprocess.h>

NS_BEGIN

FileSystem FileSystem::instance;

FileSystem::FileSystem()
{}

FileSystem::~FileSystem()
{}

FileSystem* FileSystem::GetInstance()
{
	return &instance;
}

bool FileSystem::Initialize()
{
	return true;
}

char* FileSystem::LoadTextFile(const char* filepath)
{
	char* output = 0;

	std::ifstream in(filepath, std::ios_base::binary);
	if (in.is_open())
	{
		in.seekg(0, std::ios::end);
		size_t length = (size_t)in.tellg();
		output = new char[length + 1];
		in.seekg(0, std::ios::beg);

		in.read(output, length);
		output[length] = '\0';
		in.close();
	}

	return output;
}

Image FileSystem::LoadImageFile(const char* filepath)
{
	Image image;

	image.data = stbi_load(filepath, &image.width, &image.height, &image.components, 0);

	if (image.components != 4)
	{
		uint imagesize = image.width * image.height * 4;

		uint8_t* temp = new uint8_t[imagesize];
		if (image.components == 3)
		{
			// foreach pixel
			for (uint i = 0; i < image.width * image.height; i++)
			{
				// copy the rgb
				for (uint j = 0; j < 3; j++)
				{
					temp[i * 4 + j] = image.data[i * 3 + j];
				}
				// set alpha to 1
				temp[i * 4 + 3] = 1;
			}
		}
		else if (image.components == 1)
		{
			// foreach pixel
			for (uint i = 0; i < image.width * image.height; i++)
			{
				// copy the rgb
				for (uint j = 0; j < 3; j++)
				{
					temp[i * 4 + j] = image.data[i];
				}
				// set alpha to 1
				temp[i * 4 + 3] = 1;
			}
		}
		delete[] image.data;
		image.data = temp;
	}

	return image;
}

MeshData FileSystem::LoadMesh(char* filepath)
{
	Assimp::Importer importer;

	const aiScene* scene = importer.ReadFile(filepath, aiProcess_CalcTangentSpace | aiProcess_Triangulate | aiProcess_JoinIdenticalVertices | aiProcess_SortByPType);// | aiProcess_FlipWindingOrder);

	MeshData data;
	return AssimpProcessScene(scene->mRootNode, scene, data);
}

MeshData FileSystem::AssimpProcessScene(aiNode* node, const aiScene* scene, MeshData& data)
{
	for (uint32_t i = 0; i < node->mNumMeshes; i++)
	{
		aiMesh* mesh = scene->mMeshes[i];
		data.Append(AssimpProcessMesh(mesh, scene));
	}

	for (uint32_t i = 0; i < node->mNumChildren; i++)
	{
		AssimpProcessScene(node->mChildren[i], scene, data);
	}

	return data;
}

MeshData FileSystem::AssimpProcessMesh(aiMesh* mesh, const aiScene* scene)
{
	MeshData data;

	data.vertices.resize(mesh->mNumVertices);

	for (uint32_t i = 0; i < mesh->mNumVertices; i++)
	{
		MeshVertex temp;

		// Vertices
		memcpy(&temp.position, &mesh->mVertices[i], sizeof(float) * 3);

		// Normals
		memcpy(&temp.normal, &mesh->mNormals[i], sizeof(float) * 3);

		// Tangents
		if (mesh->mTangents)
		{
			memcpy(&temp.tangent, &mesh->mTangents[i], sizeof(float) * 3);
		}
		else
		{
			memset(&temp.tangent, 0, sizeof(float) * 3);
		}
		// UVs
		if (mesh->mTextureCoords)
		{
			memcpy(&temp.texcoord, &mesh->mTextureCoords[0][i], sizeof(float) * 2);
		}
		else
		{
			memset(&temp.tangent, 0, sizeof(float) * 2);
		}

		temp.color = Color(0.7f, 0.7f, 0.7f, 1.0);

		data.vertices[i] = temp;
	}

	data.indices.resize(mesh->mNumFaces * 3);

	for (uint16_t i = 0; i < mesh->mNumFaces; i++)
	{
		aiFace face = mesh->mFaces[i];
		for (uint16_t j = 0; j < face.mNumIndices; j++)
		{
			data.indices[i * 3 + j] = face.mIndices[j];
		}
	}

	return data;
}

NS_END