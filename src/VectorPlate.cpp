#include "VectorPlate.h"

#include "Graphics\Mesh.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"

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

void VectorPlate::OnAddToGameObject(GameObject* object)
{
	LuminaBehaviour::OnAddToGameObject(object);
	p_CachedTransform = object->GetComponent<Transform>();
}

void VectorPlate::onCollision(Collider* c)
{

}

void VectorPlate::setDirection(Vector3 direction)
{
	this->direction = direction;
}

Vector3 VectorPlate::getDirection()
{
	return direction;
}

void VectorPlate::Update(float dt)
{

}

NS_END
