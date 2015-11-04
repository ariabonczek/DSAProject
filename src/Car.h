#pragma once
#ifndef CAR_H
#define CAR_H


#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"

NS_BEGIN
class Car : public GameObject
{
	
public:
	Car(std::string name, Mesh* mesh, Material* material);
	Car(const Car& car);
	~Car();
	
	Car& operator=(const Car& car);
	
	void Update(float dt);
	void CalcForce();
	void ApplyForce(Vector3 force);
	void Rotate(Quaternion rotation);

private:
	Vector3 velocity;
	Vector3 acceleration;

	const float MAX_SPEED = 5.0f;
	const float MAX_FORCE = 10.0f;

	int mass;

};

NS_END
#endif