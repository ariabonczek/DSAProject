#include "FileSystem.hpp"

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

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

	std::cout << filepath << std::endl;
	std::cout << image.width << std::endl;
	std::cout << image.height << std::endl;
	std::cout << image.components << std::endl;


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

NS_END