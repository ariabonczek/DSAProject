#include "Goal.h"

#include "Graphics\Mesh.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"

NS_BEGIN
Goal::Goal()
{}

Goal::Goal(const Goal& object)
{}

Goal::~Goal()
{}

Goal& Goal::operator=(const Goal& object)
{
	return *this;
}

void Goal::Initialize()
{
	p_Collider = p_GameObject->GetComponent<Collider>();

}

void Goal::Update(float dt)
{}

void Goal::OnAddToGameObject(GameObject* object)
{
	LuminaBehaviour::OnAddToGameObject(object);
	p_CachedTransform = object->GetComponent<Transform>();
	
}

void Goal::OnTrigger(Collider* c)
{
	if (c->GetGameObject()->GetComponent<Car>())
	{
		Car* car = c->GetGameObject()->GetComponent<Car>();
	
		if (car->InPlay())
		{	

			rb = c->GetGameObject()->GetComponent<Rigidbody>();
			
			Vector3 distance = rb->GetPosition() - this->GetGameObject()->GetComponent<Rigidbody>()->GetPosition();
			distance.Normalize();
			//rb->AddForce(distance);

			car->AddGoal(1);
			car->SetPlay(false);
			car->ReSpawn();
		
		}
	}
}

NS_END