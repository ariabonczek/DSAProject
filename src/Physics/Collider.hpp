#pragma once

#include "../Config.hpp"

#include "../Graphics/LuminaBehaviour.hpp"

NS_BEGIN

class Shape;
class Box;
class Sphere;
class Rigidbody;

/// <summary>
///
/// </summary>
class Collider : public LuminaBehaviour
{
public:

	Collider(Rigidbody* rigidbody = nullptr);

	void Initialize();

	void AddBox(Box* box);
	void AddSphere(Sphere* sphere);

	uint32 GetNumShapes()const;
private:
	std::vector<Shape*> shapes;
	Rigidbody* p_Rigidbody;
};

NS_END