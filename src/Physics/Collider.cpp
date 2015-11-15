#include "Collider.hpp"

#include "Shape.hpp"
#include "../Graphics/GameObject.hpp"

NS_BEGIN

Collider::Collider(Rigidbody* rigidbody)
{
	p_Rigidbody = rigidbody;
	shapes.reserve(1);
}

void Collider::Initialize()
{
	p_Rigidbody = p_GameObject->GetComponent<Rigidbody>();
}

void Collider::AddBox(Box* box)
{
	shapes.push_back(box);
}

void Collider::AddSphere(Sphere* sphere)
{
	shapes.push_back(sphere);
}

uint32 Collider::GetNumShapes()const
{
	return shapes.size();
}

NS_END