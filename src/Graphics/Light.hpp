#ifndef LIGHT_HPP
#define LIGHT_HPP

#include "../Config.hpp"
#include "Data.hpp"

NS_BEGIN
struct Light
{
public:
	Light(LightType type, Color color = Color::White, float intensity = 1.0f);
	~Light();

	LightData lightData;
	LightType type;
};

NS_END

#endif