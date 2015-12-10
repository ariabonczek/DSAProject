#version 430

uniform vec4 tint;

in vec4 _color;
in vec3 _normal;
in vec2 _uv;

out vec4 finalColor;

uniform vec4 lightColor;
uniform vec3 lightDirection;
uniform float lightIntensity;

uniform float alpha;

void main()
{
	float diffFactor = dot(-lightDirection, _normal);

	finalColor = vec4((_color * (lightColor * diffFactor * lightIntensity)).rgb, alpha);
}