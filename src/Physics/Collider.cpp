#include "Collider.hpp"

#include "../Graphics/GameObject.hpp"

NS_BEGIN

Collider::Collider(Shape* shape, Rigidbody* rigidbody):
	isTrigger(false)
{
	s_Shape = (Box*)shape;
	p_Rigidbody = rigidbody;
	shapes.push_back(shape);
}

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

void Collider::SetTrigger(bool value)
{
	isTrigger = value;
}

bool Collider::GetIsTrigger()const
{
	return isTrigger;
}

Box* Collider::GetBox(uint i)
{
	return (Box*)shapes[i];
}

Sphere* Collider::GetSphere(uint i)
{
	return (Sphere*)shapes[i];
}


void Collider::RemoveShape(uint i) {
	shapes.erase(shapes.begin() + i);
	shapes.shrink_to_fit();
}

Rigidbody* Collider::GetRigidbody()const
{
	return p_Rigidbody;
}

std::vector<Shape*> Collider::GetShapeVector() {
	return shapes;
}

Box* Collider::GetS_Shape() {
	return s_Shape;
}

void Collider::SetRigidbody(Rigidbody* rb)
{
	p_Rigidbody = rb;
}

uint32 Collider::GetNumShapes()const
{
	return shapes.size();
}

NS_END