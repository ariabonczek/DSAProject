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
struct Shape
{
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
struct Box : public Shape
{
	Vector3 m_HalfWidth;

	Box(Vector3 halfWidth = Vector3::Zero) : Shape(ShapeType::Box), m_HalfWidth(halfWidth){}
};

/// <summary>
///
/// </summary>
struct Sphere : public Shape
{
	float m_Radius;

	Sphere(float radius) : Shape(ShapeType::Sphere), m_Radius(radius) {}
};

NS_END