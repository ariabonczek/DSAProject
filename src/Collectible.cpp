#include "Collectible.h"

#include "Graphics\Mesh.hpp"
#include "Physics\PhysicsManager.hpp"

NS_BEGIN

Collectible::Collectible(std::string name, Mesh* mesh, Material* material)
	:GameObject(name, mesh, material){

	boxCollider = new BoxCollider(Vector3::Zero, Vector3(1.5f, 0.5f, 3.0f), 0, transform);
	g_PhysicsManager.AddCollider(boxCollider);
}

Collectible::Collectible(const Collectible& object)
	:GameObject(object)
{
	this->name = object.name;
	this->mesh = object.mesh;
	this->material = object.material;
	this->transform = object.transform;
}

Collectible::~Collectible(){

}

void Collectible::Effect(Car* car){
	car->SetMass(car->GetMass * 0.9f);
}

NS_END