#include "VectorPlate.h"

#include "Graphics\Mesh.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"
#include "Car.h"

NS_BEGIN

VectorPlate::VectorPlate(Vector3 direction, float magnitude)
{
	this->direction = direction;
	this->magitude = magnitude;

}

VectorPlate::VectorPlate(const VectorPlate& object)
{
}

VectorPlate::~VectorPlate()
{
}

VectorPlate& VectorPlate::operator=(const VectorPlate& object)
{
	return *this;
}

void VectorPlate::Initialize()
{
	p_Collider = p_GameObject->GetComponent<Collider>();
}

void VectorPlate::OnAddToGameObject(GameObject* object)
{
	LuminaBehaviour::OnAddToGameObject(object);
	p_CachedTransform = object->GetComponent<Transform>();
	objManager = GameObjectManager::GetInstance();
}

void VectorPlate::onCollision(Collider* c)
{
	std::cout << "working" << std::endl;
	GameObject* gO = c->GetGameObject();

	for (int i = 0; i < objManager->GetSize(); i++)
	{
		GameObject* obj = objManager->GetList()[i];
		if (obj->GetComponent<Car>() == nullptr)
		{
			continue;
		}

		obj->GetComponent<Car>()->ApplyForce(direction * magitude);
	}
}

void VectorPlate::setDirection(Vector3 direction)
{
	this->direction = direction;
}

Vector3 VectorPlate::getDirection()
{
	return direction;
}

void VectorPlate::setMagnitude(float value)
{
	this->magitude = value;
}

float VectorPlate::getMagnitude()
{
	return magitude;
}

void VectorPlate::Update(float dt)
{

}

NS_END
