#include "Texture2D.hpp"

#include "../Utility/stb_image.h"

NS_BEGIN

Texture2D::Texture2D()
{
	glGenTextures(1, &texture);

	glBindTexture(GL_TEXTURE_2D, texture);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
}

Texture2D::Texture2D(Image& image)
{
	glGenTextures(1, &texture);

	glBindTexture(GL_TEXTURE_2D, texture);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, image.width, image.height, 0, GL_RGBA, GL_UNSIGNED_BYTE, image.data);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
}

void Texture2D::Generate(GLint filter, GLint address)
{
	glGenTextures(1, &texture);
	glBindTexture(GL_TEXTURE_2D, texture);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, filter);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, filter);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, address);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, address);

	glBindTexture(GL_TEXTURE_2D, 0);
}

void Texture2D::RenderToTexture(GLenum format, GLint type, uint width, uint height, const GLvoid* data)
{
	glBindTexture(GL_TEXTURE_2D, texture);
	glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, 0, format, type, data);
	glBindTexture(GL_TEXTURE_2D, 0);
}

Texture2D::~Texture2D()
{

}

void Texture2D::Bind(uint slot)
{
	glBindTexture(GL_TEXTURE_2D, texture);
}

NS_END