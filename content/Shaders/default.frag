#version 430

uniform vec4 tint;

in vec4 _color;
in vec3 _normal;
in vec2 _uv;

out vec4 finalColor;

uniform sampler2D diffuse;

void main()
{
	finalColor = _color; //* tint;
}