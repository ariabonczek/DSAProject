#ifndef FILESYSTEM_HPP
#define FILESYSTEM_HPP

#include "..\Config.hpp"
#include <fstream>
#include "../Graphics/Texture2D.hpp"

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
private:
	FileSystem();
	static FileSystem instance;
};

NS_END

#endif