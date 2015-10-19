#version 430

uniform vec4 tint;

in vec3 _worldpos;
in vec4 _color;
in vec3 _normal;
in vec2 _uv;

out vec4 finalColor;

uniform vec4 lightColor;
uniform float lightIntensity;
uniform float lightRange;
uniform vec3 lightPosition;

void main()
{
	vec3 lightDirection = lightPosition - _worldpos;
	float d = length(lightDirection);
	if(d > lightRange)
	{
		finalColor = vec4(0.0, 0.0, 0.0, 1.0);
		return;
	}

	lightDirection /= d;

	float diffFactor = dot(lightDirection, _normal);

	float att = 1.0 / (1.0 + 0.1*d + 0.01 * d * d);
	diffFactor *= att;

	finalColor = _color * (lightColor * diffFactor * lightIntensity);
}