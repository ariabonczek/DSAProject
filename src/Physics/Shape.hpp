#pragma once

#include "../Config.hpp"

NS_BEGIN

enum class ShapeType
{
	Box,
	Sphere
};

/// <summary>
///
/// </summary>
class Shape
{
public:

private:
	Quaternion m_Orientation;
	Vector3 m_Offset;
	ShapeType m_Type;
};

/// <summary>
///
/// </summary>
class Box : public Shape
{
private:
	Vector3 m_HalfWidth;
};

/// <summary>
///
/// </summary>
class Sphere : public Shape
{
private:
	float m_Radius;
};

NS_END