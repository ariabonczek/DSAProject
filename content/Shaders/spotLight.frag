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
uniform vec3 lightDirection;
uniform float lightSpot;

void main()
{
	vec3 lightVector = lightPosition - _worldpos;
	float d = length(lightVector);
	if(d > lightRange)
	{
		finalColor = vec4(0.0, 0.0, 0.0, 1.0);
		return;
	}

	lightVector /= d;

	float diffFactor = dot(lightVector, _normal);

	float spot = pow(max(dot(-lightVector, lightDirection), 0.0f), lightSpot);
	
	float att = spot / (1.0 + 0.1*d + 0.01 * d * d);
	diffFactor *= att;

	finalColor = _color * (lightColor * diffFactor * lightIntensity);
}