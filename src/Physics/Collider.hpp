#pragma once

#include "../Config.hpp"

NS_BEGIN

class Shape;
class Rigidbody;

/// <summary>
///
/// </summary>
class Collider
{
public:

	void AddShape(Shape* shape);

private:
	std::vector<Shape*> shapes;
	Rigidbody* p_Rigidbody;
};

NS_END