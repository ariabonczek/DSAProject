#pragma once

#include "../Config.hpp"

#include "../Graphics/LuminaBehaviour.hpp"

#include "Shape.hpp"

NS_BEGIN

class Rigidbody;

/// <summary>
///
/// </summary>
class Collider : public LuminaBehaviour
{
public:
	Collider(Shape* shape, Rigidbody* rigidbody = nullptr);
	Collider(Rigidbody* rigidbody = nullptr);

	void Initialize();

	void AddBox(Box* box);
	void AddSphere(Sphere* sphere);

	Shape* GetShape(uint i);
	Box* GetBox(uint i);
	Rigidbody* GetRigidbody()const;
	void SetRigidbody(Rigidbody* rb);
	uint32 GetNumShapes()const;
	std::vector<Shape*> GetShapeVector();
	Box* GetS_Shape();

	void RemoveShape(uint i);
private:
	std::vector<Shape*> shapes;
	Rigidbody* p_Rigidbody;
	Box* s_Shape;
};

NS_END