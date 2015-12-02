#pragma once
#ifndef VECTORPLATE_H
#define VECTORPLATE_H

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Graphics/LuminaBehaviour.hpp"
#include "Physics\Collider.hpp"

#include "GameObjectManager.h"

NS_BEGIN
class VectorPlate : public LuminaBehaviour
{
public:
	VectorPlate();
	VectorPlate(const VectorPlate& car);
	~VectorPlate();

	VectorPlate& operator=(const VectorPlate& object);

	void Initialize();
	
	void Update(float dt);
	

	void setDirection(Vector3 direction);
	void setMagnitude(float value);
	Vector3 getDirection();
	float getMagnitude();

	void OnTrigger(Collider* c);
	void OnAddToGameObject(GameObject* object);

private:
	Transform* p_CachedTransform;
	Collider* p_Collider;

	/*
	Vector3 direction;
	float magnitude;*/
	GameObjectManager *objManager;
	Rigidbody *rb;
	GameObject* go;

};
NS_END
#endif VECTORPLATE_H
