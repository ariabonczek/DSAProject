#include "VectorPlate.h"

#include "Graphics\Mesh.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"
#include "Car.h"

NS_BEGIN

VectorPlate::VectorPlate()
{
	

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


/*
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
	this->magnitude = value;
}

float VectorPlate::getMagnitude()
{
	return magnitude;
}*/

void VectorPlate::Update(float dt)
{
	
}

void VectorPlate::OnAddToGameObject(GameObject* object)
{
	LuminaBehaviour::OnAddToGameObject(object);
	p_CachedTransform = object->GetComponent<Transform>();
	objManager = GameObjectManager::GetInstance();
}

void VectorPlate::OnTrigger(Collider* c)
{
	if (c->GetGameObject()->GetComponent<Car>())
	{
		rb = c->GetRigidbody();
		go = c->GetGameObject();

		rb->AddForce(p_CachedTransform->GetForward() * p_CachedTransform->GetLocalScale().x * 2.0f);
		std::cout << p_CachedTransform->GetForward() << std::endl;
	}
}
NS_END
