#pragma once
#ifndef CAR_H
#define CAR_H


#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"

NS_BEGIN
class Car : public GameObject
{
	
public:
	Car(std::string name, Mesh* mesh, Material* material, Transform* trans);
	Car(const Car& car);
	~Car();
	
	Car& operator=(const Car& car);
	
	void Update(float dt);
	void CalcForce();
	float CalcMagnitude(Vector3 Force);
	void ApplyForce(Vector3 force);
	void Rotate(Quaternion rotation);

private:
	Vector3 velocity;
	Vector3 acceleration;

	const float MAX_SPEED = 5;
	
	std::string name;
	Transform* transform;
	Mesh* mesh;
	Material* material;

	int mass;

	float maxSpeed;
	float maxForce;


};

NS_END
#endif