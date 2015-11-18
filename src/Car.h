#pragma once
#ifndef CAR_H
#define CAR_H

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Graphics/LuminaBehaviour.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"

NS_BEGIN
class Car : public LuminaBehaviour
{
public:
	Car();
	Car(const Car& car);
	~Car();
	
	Car& operator=(const Car& car);

	void Initialize();
	void OnAddToGameObject(GameObject* object);
	void Update(float dt);

	void OnCollision(Collider* c);

	void Accelerate(Vector3 acceleration);
	void Turn(Quaternion rotation);

	void CalcForce();
	void ApplyForce(Vector3 force);
	void Rotate(Quaternion rotation);

	void SetMass(float m);
	float GetMass();

private:
	Transform* p_CachedTransform;
	Collider* p_Collider;
	Rigidbody* p_Rigidbody;

	Vector3 velocity;
	Vector3 acceleration;

	const float MAX_SPEED = 5.0f;
	const float MAX_FORCE = 10.0f;

	float mass;

};

NS_END
#endif