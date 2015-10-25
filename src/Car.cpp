#include "Car.h"

NS_BEGIN

Car :: Car(std::string name, Mesh* mesh, Material* material,Transform* trans)
	:GameObject(name, mesh, material)
{

	this->transform = trans;
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

void Car::Update(float dt)
{
	CalcForce();

	velocity.Add(velocity, acceleration);

	
	if (CalcMagnitude(velocity) > maxSpeed)
	{
		velocity.SetMagnitude(maxSpeed);
	}

	transform->Translate(velocity);

	acceleration = Vector3(0,0,0);


}

void Car::CalcForce()
{
	Vector3 force = Vector3(0.0f);

	if (CalcMagnitude(force) > maxForce)
	{
		force.SetMagnitude(maxForce);
	}
	
}

void Car::ApplyForce(Vector3 force)
{
	acceleration.Add(acceleration, force.Divide(force, mass));

}

float Car::CalcMagnitude(Vector3 force)
{
	return sqrt(force.x * force.x + force.y * force.y + force.z * force.z);
}

void Car::Rotate(Quaternion rotation)
{
	this->transform->Rotate(rotation);
}




NS_END