#pragma once

#include "../Config.hpp"

#include "Data.hpp"

#include <ft2build.h>
#include FT_FREETYPE_H

NS_BEGIN

class Material;
class Texture2D;

class TextRenderer
{
public:
	TextRenderer();
	~TextRenderer();

	void Initialize();

	void RenderText(const char* text, uint x, uint y);

	void SetFont(const char* filepath);
	void SetFontSize(uint size);
	void SetFontColor(Color color);
private:
	FT_Library m_Library;
	FT_Face m_Face;

	Material* m_TextMaterial;
	Texture2D* m_Texture;

	uint fontsize;
	Color fontColor;
};

extern TextRenderer g_TextRenderer;

NS_END