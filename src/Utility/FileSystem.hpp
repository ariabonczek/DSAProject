#ifndef FILESYSTEM_HPP
#define FILESYSTEM_HPP

#include "..\Config.hpp"
#include <fstream>
#include <assimp\scene.h>
#include "../Graphics/Texture2D.hpp"
#include "../Graphics/Data.hpp"

struct Image;

NS_BEGIN

struct Image;	

class FileSystem
{
public:
	~FileSystem();
	static FileSystem* GetInstance();

	/// <summary>
	/// Initializes FileSystem
	/// </summary>
	static bool Initialize();

	/// <summary>
	/// 
	/// </summary>
	static char* LoadTextFile(const char* filepath);

	static Image LoadImageFile(const char* filepath);

	static MeshData LoadMesh(char* filepath);

private:
	FileSystem();
	static FileSystem instance;

	static MeshData AssimpProcessScene(aiNode* node, const aiScene* scene, MeshData& data);
	static MeshData AssimpProcessMesh(aiMesh* mesh, const aiScene* scene);
};

NS_END

#endif