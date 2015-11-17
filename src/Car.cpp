#include "Car.h"

#include "Graphics\Mesh.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"

NS_BEGIN

Car::Car()
{ }

Car::Car(const Car& object)
{}

Car::~Car()
{
	
}

Car& Car::operator=(const Car& object)
{

	return *this;
}

void Car::Initialize()
{
	p_Rigidbody = p_GameObject->GetComponent<Rigidbody>();
	p_Collider = p_GameObject->GetComponent<Collider>();
}

void Car::OnAddToGameObject(GameObject* object)
{
	LuminaBehaviour::OnAddToGameObject(object);
	p_CachedTransform = object->GetComponent<Transform>();
}

void Car::SetMass(float m){
	mass = m;
}
float Car::GetMass(){
	return mass;
}

void Car::Update(float dt)
{}

void Car::Accelerate(Vector3 acceleration)
{
	p_Rigidbody->AddForce(acceleration);
}

void Car::Turn(Quaternion rotation)
{
	p_CachedTransform->Rotate(rotation);
}

void Car::CalcForce()
{
	Vector3 force = Vector3(0.0f);

	if (force.Length() > MAX_FORCE)
	{
		force.SetMagnitude(MAX_FORCE);
	}
}

void Car::ApplyForce(Vector3 force)
{
	acceleration = acceleration + force;
}

void Car::Rotate(Quaternion rotation)
{
	p_CachedTransform->Rotate(rotation);
}

void Car::HandleCollision()
{
	velocity = velocity * 0.4f;
}

NS_END