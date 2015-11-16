#ifndef TEXTURE2D_HPP
#define TEXTURE2D_HPP

#include "../Config.hpp"

NS_BEGIN

struct Image
{
	int width, height, components;
	unsigned char* data;
};

class Texture2D
{
public:
	Texture2D();
	Texture2D(Image& image);
	~Texture2D();

	void Generate(GLint filter, GLint address);

	void RenderToTexture(GLenum format, GLint type, uint width, uint height, const GLvoid* data);


	void Bind(uint slot = 0);

private:
	uint texture;
};

NS_END


#endif