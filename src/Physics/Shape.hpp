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
	Quaternion m_Orientation;
	Vector3 m_Offset;
	ShapeType m_Type;

	Shape(ShapeType type):
		m_Orientation(Quaternion::Identity),
		m_Offset(Vector3::Zero),
		m_Type(type)
	{}
};

/// <summary>
///
/// </summary>
class Box : public Shape
{
public:
	Vector3 m_HalfWidth;

	Box(Vector3 halfWidth = Vector3::One) : Shape(ShapeType::Box), m_HalfWidth(halfWidth){}
};

/// <summary>
///
/// </summary>
class Sphere : public Shape
{
public:
	float m_Radius;

	Sphere(float radius = 1.0f) : Shape(ShapeType::Sphere), m_Radius(radius) {}
};

NS_END