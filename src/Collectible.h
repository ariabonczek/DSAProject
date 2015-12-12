#pragma once
#ifndef _COLLECTIBLE_H_
#define _COLLECTIBLE_H_

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Graphics/LuminaBehaviour.hpp"
#include "Physics\Rigidbody.hpp"

#include "Car.h"

NS_BEGIN
class Collectible : public LuminaBehaviour
{
public:
	Collectible(int e);
	Collectible(const Collectible& object);
	~Collectible();

	Collectible& operator=(const Collectible& object);
	void Initialize();
	void Destroy();

	void OnTrigger(Collider*c);
	void OnAddToGameObject(GameObject* object);


private:
	Transform* p_CachedTransform;
	Collider* p_Collider;

	//pointers for car stuff
	Rigidbody* rb_Collector;
	GameObject* go_Collector;
	
	int enumType;

	//using this for 
	float mass;	//affects SPEED

	float minMass;
	float maxMass;


	bool hit;
};

NS_END

#endif