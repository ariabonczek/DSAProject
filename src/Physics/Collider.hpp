#pragma once

#include "../Config.hpp"

NS_BEGIN

class Shape;
class Box;
class Sphere;
class Rigidbody;

/// <summary>
///
/// </summary>
class Collider
{
public:

	Collider(Rigidbody* rigidbody = nullptr);

	void AddBox(Box* box);
	void AddSphere(Sphere* sphere);

	uint32 GetNumShapes()const;
private:
	std::vector<Shape*> shapes;
	Rigidbody* p_Rigidbody;
};

NS_END