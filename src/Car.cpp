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

void Car::OnCollision(Collider* c)
{}

void Car::OnTrigger(Collider* c)
{}

void Car::SetMass(float m){
	mass = m;
}
float Car::GetMass(){
	return mass;
}

Vector3 Car::GetVelocity() {
	return velocity;
}

void Car::Update(float dt)
{}

void Car::Accelerate(Vector3 acceleration)
{
	p_Rigidbody->AddForce(acceleration);
}

void Car::TurnLeft(float amount)
{
	p_Rigidbody->AddTorque(Vector3::Up * -amount);
	//p_CachedTransform->Rotate(rotation);
}

void Car::TurnRight(float amount)
{
	p_Rigidbody->AddTorque(Vector3::Up * amount);
	//p_CachedTransform->Rotate(rotation);
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


void Car::SetEnemey(bool val) {
	enemyTeam = val;
}

bool Car::IsEnemy() {
	return enemyTeam;
}

NS_END