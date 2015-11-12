#include "Car.h"

#include "Graphics\Mesh.hpp"
#include "Physics\PhysicsManager.hpp"

NS_BEGIN

Car :: Car(std::string name, Mesh* mesh, Material* material)
	:GameObject(name, mesh, material)
{ 
	collider = new BoxCollider(Vector3::Zero, Vector3(1.5f, 0.5f, 1.4f), 0, transform);
	g_PhysicsManager.AddCollider(collider);
	mass = 1.0f;
}

Car::Car(const Car& object)
	:GameObject(object)
{
	this->name = object.name;
	this->mesh = object.mesh;
	this->material = object.material;
	this->transform = object.transform;
}

Car::~Car()
{
	
}

Car& Car::operator=(const Car& object)
{
	this->name = object.name;
	this->mesh = object.mesh;
	this->material = object.material;
	this->transform = object.transform;

	return *this;
}

void Car::SetMass(float m){
	mass = m;
}
float Car::GetMass(){
	return mass;
}

void Car::Update(float dt)
{
	CalcForce();

	velocity = velocity + acceleration;
	velocity = velocity * 0.9f;//mass?
	
	if (collider->GetCollisionFlag())
	{
		HandleCollision();
	//	collider->DebugDraw(Matrix::Identity, collider->GetModelMatrix());
		collider->SetCollisionFlag(false);
	}

	if (velocity.Length() > MAX_SPEED)
	{
		velocity.SetMagnitude(MAX_SPEED);
	}

	transform->Translate(velocity);

	acceleration = Vector3(0,0,0);
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
	this->transform->Rotate(rotation);
}

void Car::HandleCollision()
{
	velocity = velocity * 0.4f;
}

NS_END