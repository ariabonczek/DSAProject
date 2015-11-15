#pragma once
#ifndef CAR_H
#define CAR_H

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Graphics/LuminaBehaviour.hpp"

NS_BEGIN
class Car : public LuminaBehaviour
{
public:
	Car();
	Car(const Car& car);
	~Car();
	
	Car& operator=(const Car& car);
	
	void OnAddToGameObject(GameObject* object);
	void Update(float dt);

	void Accelerate(Vector3 acceleration);
	void Turn(Quaternion rotation);

	void CalcForce();
	void ApplyForce(Vector3 force);
	void Rotate(Quaternion rotation);
	void HandleCollision();


	void SetMass(float m);
	float GetMass();

private:
	Transform* p_CachedTransform;
	Vector3 velocity;
	Vector3 acceleration;

	const float MAX_SPEED = 5.0f;
	const float MAX_FORCE = 10.0f;

	float mass;

};

NS_END
#endif