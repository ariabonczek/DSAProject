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
<<<<<<< HEAD
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
=======
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
>>>>>>> 0cdfa846a0055293bf0cd560f821923eb2bd52ba
}

NS_END