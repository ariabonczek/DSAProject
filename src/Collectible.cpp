#include "Collectible.h"

#include "Graphics\Mesh.hpp"

NS_BEGIN

Collectible::Collectible()
{}

Collectible::Collectible(const Collectible& object)
{}

Collectible::~Collectible()
{}

Collectible& Collectible::operator=(const Collectible& c)
{
	return *this;
}

void Collectible::OnCollisionEnter()
{}

void Collectible::Effect(Car* car)
{
	car->SetMass(car->GetMass() * 0.9f);
}



NS_END