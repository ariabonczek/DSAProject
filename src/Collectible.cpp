#include "Collectible.h"
#include "GameObjectManager.h"
#include "Graphics\Mesh.hpp"

NS_BEGIN

Collectible::Collectible(float m, float s){
	mass = m;
	size = s;
	maxSize = 0.7f;
	maxMass = 4.5f;
	hit = false;
}

void Collectible::Initialize() {
	p_Collider = p_GameObject->GetComponent<Collider>();
}

void Collectible::Destroy() {
	hit = true;
	GameObjectManager::GetInstance()->RemoveFromList(this->GetGameObject()->GetName());
	
	std::vector<Shape*> d = p_Collider->GetShapeVector();
	
	for (uint i = 0; i < d.size(); i++) {
		if (p_Collider->GetS_Shape() == d[i]) {
			//p_Collider->RemoveShape(i);
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

void Collectible::OnCollision(Collider* c) {
	rb_Collector = c->GetRigidbody();
	go_Collector = c->GetGameObject();
	
	OnEnable();
}

void Collectible::OnEnable() {
	if (hit == false) {
		go_Collector->IncrementCrystals();
		//do same for maxSize when that's been figured out
		if (rb_Collector->GetMass() > maxMass) {
			rb_Collector->SetMass(maxMass);
		}
		else {
			rb_Collector->SetMass(rb_Collector->GetMass() * mass);
		}

		float x = rb_Collector->GetMass();
		Vector3 sizeTest = go_Collector->GetTransform()->GetLocalScale();
		if (sizeTest.x > maxSize) {
			go_Collector->GetTransform()->SetLocalScale(Vector3(maxSize));
		}
		else {
			go_Collector->GetTransform()->SetLocalScale(go_Collector->GetTransform()->GetLocalScale() * size);
		}
		Destroy();
	}
}
NS_END