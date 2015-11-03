#version 430

uniform vec4 tint;

in vec4 _color;
in vec3 _normal;
in vec2 _uv;

out vec4 finalColor;

void main()
{
	finalColor = vec4(0.0f, 1.0f, 0.0f, 0.2f);
}