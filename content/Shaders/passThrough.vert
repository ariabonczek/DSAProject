#version 430

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 texcoord;
layout(location = 2) in vec4 color;
layout(location = 3) in vec3 normal;
layout(location = 4) in vec3 tangent;

out vec2 _uv;

void main()
{
	_uv = texcoord;
	gl_Position = vec4(position, 1.0);
}