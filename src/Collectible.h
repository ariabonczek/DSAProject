#ifndef _COLLECTIBLE_H_
#define _COLLECTIBLE_H_

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Graphics/LuminaBehaviour.hpp"
#include "Car.h"

NS_BEGIN

class Collectible : public LuminaBehaviour
{
public:
	Collectible(float m, float s);
	Collectible(const Collectible& object);
	~Collectible();

	Collectible& operator=(const Collectible& object);
	void Initialize();
	void Destroy();

	void OnTrigger(Collider*c);
	void OnEnable();
	void OnAddToGameObject(GameObject* object);
private:
	Transform* p_CachedTransform;
	Collider* p_Collider;

	//////pointers for car stuff
	Rigidbody* rb_Collector;
	GameObject* go_Collector;
	/////
	float maxSize;
	float maxMass;

	float mass;	//weighs rb down
	float size;  //makes rb bigger

	bool hit;
};

NS_END

#endif