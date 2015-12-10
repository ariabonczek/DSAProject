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
	void OnTrigger(Collider* c);

	void Accelerate(Vector3 acceleration);
	void TurnLeft(float amount);
	void TurnRight(float amount);

	void CalcForce();
	void ApplyForce(Vector3 force);
	void Rotate(Quaternion rotation);

	void SetMass(float m);
	float GetMass();

	
	Vector3 GetVelocity();

	void SetEnemey(bool);
	bool IsEnemy();

	void AddGoal(int value);
	void AddScores(int value);
	void SetPlay(bool value);

	int GetGoals();
	int GetScore();
	bool InPlay();

	bool IsInvincible();

	void ReSpawn();
private:
	Transform* p_CachedTransform;
	Collider* p_Collider;
	Rigidbody* p_Rigidbody;

	Vector3 velocity;
	Vector3 acceleration;

	int goals;
	int score;
	bool inPlay;
	Vector3 startLocation;

	const float MAX_SPEED = 3.0f;
	const float MAX_FORCE = 10.0f;
	float mass;

	float invincible;

	bool enemyTeam = false;
};

NS_END
#endif