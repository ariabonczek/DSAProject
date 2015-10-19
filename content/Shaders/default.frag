#version 430

uniform vec4 tint;

in vec4 _color;
in vec3 _normal;
in vec2 _uv;

out vec4 finalColor;

uniform sampler2D diffuse;

void main()
{
	//float diffFactor = dot(_normal, normalize(vec3(0.0, 1.0, -1.0)));	
	//finalColor = _color;

	//finalColor = vec4(_uv, 0, 1.0);

	finalColor = texture(diffuse, _uv);
}