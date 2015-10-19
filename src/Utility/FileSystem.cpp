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
	Image i;

	i.data = stbi_load(filepath, &i.width, &i.height, &i.components, 0);

	std::cout << filepath << std::endl;
	std::cout << i.width << std::endl;
	std::cout << i.height << std::endl;

	for (uint j = 0; j < 1; j++)
	{
		for (uint c = 0; c < i.width * 4; c += 4)
		{
			std::cout << "R: " << (uint)i.data[c] << " G: " <<(uint) i.data[c + 1] << " B: " << (uint)i.data[c + 2] << " A: " << (uint)i.data[c + 3] << std::endl;
		}
	}

	return i;
}

NS_END