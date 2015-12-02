#include "VectorPlate.h"
#include "Graphics\Mesh.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"
#include "Car.h"

NS_BEGIN

VectorPlate::VectorPlate()
{
	objManager = GameObjectManager::GetInstance();
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
/*
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
	//Iteration through the map has to be done in GOM
	GameObject* g = objManager->GetCarComponent();
		
	g->GetComponent<Car>()->ApplyForce(direction * magitude);

}*/

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
