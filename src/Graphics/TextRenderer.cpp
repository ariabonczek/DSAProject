#include "TextRenderer.hpp"

#include "Material.hpp"
#include "Texture2D.hpp"

NS_BEGIN

TextRenderer g_TextRenderer;

TextRenderer::TextRenderer()
{}

TextRenderer::~TextRenderer()
{}

void TextRenderer::Initialize()
{
	m_TextMaterial = new Material();
	m_Texture = new Texture2D();

	FT_Error error;
	error = FT_Init_FreeType(&m_Library);
	if (error)
	{
		//std::cout << "[TextRenderer] FT Library failed to initialize." << std::endl;
		return;
	}

	m_TextMaterial->LoadShader("Shaders/text.vert", ShaderType::Vertex);
	m_TextMaterial->LoadShader("Shaders/text.frag", ShaderType::Fragment);

	m_Texture->Generate(GL_LINEAR, GL_CLAMP_TO_EDGE);
	fontsize = 16;
	fontColor = Color::Red;
}

void TextRenderer::RenderText(const char* text, uint x, uint y)
{
	glEnable(GL_BLEND);
	glDisable(GL_DEPTH_TEST);

	FT_Set_Pixel_Sizes(m_Face, 0, fontsize);

	GLuint vao;
	glGenVertexArrays(1, &vao);
	glBindVertexArray(vao);

	GLuint vbo;
	glGenBuffers(1, &vbo);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);

	glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, sizeof(GL_FLOAT) * 4, 0);
	glEnableVertexAttribArray(0);

	m_TextMaterial->Bind();

	glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

	// Text render loop
	for (const char* t = text; *t; t++)
	{
		FT_GlyphSlot g;
		if (FT_Load_Char(m_Face, *t, FT_LOAD_RENDER))
			continue;
		g = m_Face->glyph;

		m_Texture->RenderToTexture(GL_RED, GL_UNSIGNED_BYTE, g->bitmap.width, g->bitmap.rows, g->bitmap.buffer);

		Vector2 position = ScreenToWorld(Vector2(x + g->bitmap_left, y - g->bitmap_top));
		Vector2 wh = ScreenToWorld(Vector2((float)g->bitmap.width, (float)g->bitmap.rows));

		float x2 = position.x;
		float y2 = position.y;
		float w = wh.x;
		float h = wh.y;

		float box[4][4] = {
			{ x2			 , y2			  , 0.0f, 0.0f },
			{ x2 - (-1.0f - w), y2			  , 1.0f, 0.0f },
			{ x2			 , y2 - (1.0 - h) , 0.0f, 1.0f },
			{ x2 - (-1.0f - w), y2 - (1.0 - h) , 1.0f, 1.0f },
		};

		m_TextMaterial->SetColor("color", fontColor);
		glBufferData(GL_ARRAY_BUFFER, sizeof(float) * 16, box, GL_DYNAMIC_DRAW);

		m_Texture->Bind();
		glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

		x += (g->advance.x >> 6);
		y += (g->advance.y >> 6);
	}

	glPixelStorei(GL_UNPACK_ALIGNMENT, 4);

	glEnable(GL_DEPTH_TEST);
	glDisable(GL_BLEND);

}

void TextRenderer::SetFont(const char* filepath)
{
	FT_Error error;
	error = FT_New_Face(m_Library, filepath, 0, &m_Face);
	switch (error)
	{
	case FT_Err_Unknown_File_Format:
	//	std::cout << "[TextRenderer] Font file format unsupported by FreeType." << std::endl;
		break;
	}
}

void TextRenderer::SetFontSize(uint size)
{
	fontsize = size;
}

void TextRenderer::SetFontColor(Color color)
{
	fontColor = color;
}

NS_END
