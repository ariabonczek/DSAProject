#include "Collectible.h"
//#include "GameObjectManager.h"
#include "Graphics\Mesh.hpp"

class GameObjectManager;
NS_BEGIN

enum type {
	fast = 0,
	slow = 1,
	heavy = 2,
	light = 3
};

Collectible::Collectible(int e){
	enumType = e;

	mass = 1.2;
	size = 1.2;

	minSize = 0.2f;
	minMass = 1.5f;

	maxSize = 0.7f;
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

	if (hit == false) {
		go_Collector->IncrementCrystals();
		//do same for maxSize when that's been figured out
		switch (this->enumType){
		case 0:
			Fast();
		case 1:
			Slow();
		case 2:
			Heavy();
		case 3:
			Light();
		}

		Destroy();
	}
}

void Collectible::Fast(){
	if (rb_Collector->GetMass() > maxMass) {
		rb_Collector->SetMass(maxMass);
	}
	else {
		rb_Collector->SetMass(rb_Collector->GetMass() * mass);
	}
}

void Collectible::Slow(){
	if (rb_Collector->GetMass() < minMass) {
		rb_Collector->SetMass(minMass);
	}
	else {
		rb_Collector->SetMass(rb_Collector->GetMass() / mass);
	}

}

void Collectible::Heavy(){
	float x = rb_Collector->GetMass();
	Vector3 sizeTest = go_Collector->GetTransform()->GetLocalScale();
	if (sizeTest.x > maxSize) {
		go_Collector->GetTransform()->SetLocalScale(Vector3(maxSize));
	}
	else {
		go_Collector->GetTransform()->SetLocalScale(go_Collector->GetTransform()->GetLocalScale() * size);
	}
}

void Collectible::Light(){
	float x = rb_Collector->GetMass();
	Vector3 sizeTest = go_Collector->GetTransform()->GetLocalScale();
	if (sizeTest.x < minSize) {
		go_Collector->GetTransform()->SetLocalScale(Vector3(minSize));
	}
	else {
		go_Collector->GetTransform()->SetLocalScale(go_Collector->GetTransform()->GetLocalScale() / size);
	}
}
NS_END