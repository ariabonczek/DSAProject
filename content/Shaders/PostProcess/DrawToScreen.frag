#version 430

in vec2 _uv;

out vec3 finalColor;

uniform sampler2D diffuse;

void main()
{
	//finalColor = texture(diffuse, _uv);
	finalColor = vec3(1.0, 0.0, 0.0);
}