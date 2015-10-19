#include "Light.hpp"

NS_BEGIN

Light::Light(LightType type, Color color, float intensity):
	type(type)
{
	lightData.color = color;
	lightData.intensity = intensity;
}

Light::~Light()
{}

NS_END