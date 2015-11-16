#include "Data.hpp"

NS_BEGIN

Color Color::Red(1.0f, 0.0f, 0.0f, 1.0f);
Color Color::Green(0.0f, 1.0f, 0.0f, 1.0f);
Color Color::Blue(0.0f, 0.0f, 1.0f, 1.0f);
Color Color::Black(0.0f, 0.0f, 0.0f, 1.0f);
Color Color::White(1.0f, 1.0f, 1.0f, 1.0f);
Color Color::Gray(0.7f, 0.7f, 0.7f, 1.0f);
Color Color::Yellow(1.0f, 1.0f, 0.0f, 1.0f);
Color Color::Magenta(1.0f, 0.0f, 1.0f, 1.0f);
Color Color::Cyan(0.0f, 1.0f, 1.0f, 1.0f);
Color Color::RebeccaPurple(0.4f, 0.2f, 0.6f, 1.0f);
Color Color::PapayaWhip(1.0f, 0.9373f, 0.8353f, 1.0f);

Color::Color():
	r(), g(), b(), a()
{}

Color::Color(float r, float g, float b, float a) :
	r(r), g(g), b(b), a(a)
{}

void MeshData::Append(MeshData& data)
{		  
	uint32 verticesOffset = vertices.size();
	uint32 indicesOffset = indices.size();

	vertices.resize(vertices.size() + data.vertices.size());
	indices.resize(indices.size() + data.indices.size());

	for (uint32 i = 0; i < data.vertices.size(); ++i)
	{
		vertices[verticesOffset + i] = data.vertices[i];
	}

	for (uint32 i = 0; i < data.indices.size(); ++i)
	{
		indices[indicesOffset + i] = data.indices[i];
	}
}

Vector2 ScreenToWorld(Vector2 v)
{
	return Vector2((v.x / WINDOW_WIDTH) * 2.0f - 1.0f, -((v.y / WINDOW_HEIGHT) * 2.0f - 1.0f));
}

Vector2 WorldToScreen(Vector2 v)
{
	return Vector2(((v.x / 2.0f) + 0.5f) * WINDOW_WIDTH, (((1.0f - v.y) / 2.0f) + 0.5f) * WINDOW_HEIGHT);
}


NS_END