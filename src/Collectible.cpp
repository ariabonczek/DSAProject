#include "Collectible.h"
//#include "GameObjectManager.h"
#include "Graphics\Mesh.hpp"

class GameObjectManager;
NS_BEGIN

Collectible::Collectible(int e){

	mass = 1.8f;

	minMass = 1.5f;
	maxMass = 4.5f;
	hit = false;
}

void Collectible::Initialize() {
	p_Collider = p_GameObject->GetComponent<Collider>();
}

void Collectible::Destroy() {
	hit = true;

	GameObjectManager::GetInstance()->FindCollided(this->GetGameObject());	
	std::vector<Shape*> d = p_Collider->GetShapeVector();
	
	for (uint i = 0; i < d.size(); i++) {
		if (p_Collider->GetS_Shape() == d[i]) {
			p_Collider->RemoveShape(i);
		}
	}
}

void Collectible::OnAddToGameObject(GameObject* object)
{
	LuminaBehaviour::OnAddToGameObject(object);
	p_CachedTransform = object->GetComponent<Transform>();
}

Collectible::Collectible(const Collectible& object)
{}

Collectible::~Collectible()
{}

Collectible& Collectible::operator=(const Collectible& c)
{
	return *this;
}

void Collectible::OnTrigger(Collider* c)
{
	rb_Collector = c->GetRigidbody();
	go_Collector = c->GetGameObject();

	if (go_Collector->GetComponent<Car>()->IsEnemy())
	{
		uint p = GameObjectManager::GetInstance()->GetEnemyScore() + 1;
		GameObjectManager::GetInstance()->SetEnemyScore(p);
	}
	else
	{
		uint p = GameObjectManager::GetInstance()->GetPlayerScore() + 1;
		GameObjectManager::GetInstance()->SetPlayerScore(p);
	}
	Destroy();
	
}


NS_END