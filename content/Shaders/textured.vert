#version 430

layout(location = 0) in vec3 position;
layout(location = 1) in vec2 texcoord;
layout(location = 2) in vec4 color;
layout(location = 3) in vec3 normal;
layout(location = 4) in vec3 tangent;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec3 _normal;
out vec2 _uv;

void main()
{
	_uv = texcoord;
	_normal = normal;
	gl_Position = projection * view * model * vec4(position, 1.0);
}