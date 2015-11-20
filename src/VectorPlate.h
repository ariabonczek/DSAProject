#pragma once
#ifndef VECTORPLATE_H
#define VECTORPLATE_H

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Graphics/LuminaBehaviour.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"
#include "GameObjectManager.h"

NS_BEGIN
class VectorPlate : public LuminaBehaviour
{
public:
	VectorPlate(Vector3 direction, float magnitude);
	VectorPlate(const VectorPlate& car);
	~VectorPlate();

	VectorPlate& operator=(const VectorPlate& object);

	void Initialize();
	void OnAddToGameObject(GameObject* object);
	void Update(float dt);
	void onCollision(Collider* c);

	void setDirection(Vector3 direction);
	void setMagnitude(float value);
	Vector3 getDirection();
	float getMagnitude();

private:
	Transform* p_CachedTransform;
	Collider* p_Collider;


	Vector3 direction;
	float magitude;
	GameObjectManager *objManager;


};
NS_END
#endif VECTORPLATE_H
