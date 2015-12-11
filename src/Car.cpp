#include "Car.h"

#include "Graphics\Mesh.hpp"
#include "Physics\Collider.hpp"
#include "Physics\Rigidbody.hpp"

NS_BEGIN

Car::Car()
{
	goals = 0;
	score = 0;
	inPlay = true;

	invincible = 0;
}

Car::Car(const Car& object)
{}

Car::~Car()
{
	
}

Car& Car::operator=(const Car& object)
{
	return *this;
}

void Car::Initialize()
{
	p_Rigidbody = p_GameObject->GetComponent<Rigidbody>();
	p_Collider = p_GameObject->GetComponent<Collider>();
	startLocation = Vector3(0.0f, 1.0f, 0.0f);
}

void Car::OnAddToGameObject(GameObject* object)
{
	LuminaBehaviour::OnAddToGameObject(object);
	p_CachedTransform = object->GetComponent<Transform>();
}

void Car::OnCollision(Collider* c)
{}

void Car::OnTrigger(Collider* c)
{}

void Car::SetMass(float m){
	mass = m;
}
float Car::GetMass(){
	return mass;
}

Vector3 Car::GetVelocity() {
	return velocity;
}

void Car::Update(float dt)
{
	if (invincible > 0) {
		invincible -= dt;

		if (invincible < 0) invincible = 0;
	}

	Rigidbody* r = GetGameObject()->GetComponent<Rigidbody>();
	r->SetLinearVelocity(Vector3::ClampMagnitude(r->GetLinearVelocity(), MAX_SPEED));
}

void Car::Accelerate(Vector3 acceleration)
{
	p_Rigidbody->AddForce(acceleration);
}

void Car::TurnLeft(float amount)
{
	p_Rigidbody->AddTorque(Vector3::Up * -amount);
	//p_CachedTransform->Rotate(rotation);
}

void Car::TurnRight(float amount)
{
	p_Rigidbody->AddTorque(Vector3::Up * amount);
	//p_CachedTransform->Rotate(rotation);
}

void Car::CalcForce()
{
	Vector3 force = Vector3(0.0f);

	if (force.Length() > MAX_FORCE)
	{
		force.SetMagnitude(MAX_FORCE);
	}
}

void Car::ApplyForce(Vector3 force)
{
	if (invincible != 0) {
		acceleration = acceleration + force;
	}
}

void Car::Rotate(Quaternion rotation)
{
	p_CachedTransform->Rotate(rotation);
}


void Car::SetEnemey(bool val) {
	enemyTeam = val;
}

bool Car::IsEnemy() {
	return enemyTeam;
}

void Car::AddGoal(int value)
{
	goals += value;
}

void Car::AddScores(int value)
{
	score += value;
}

void Car::SetPlay(bool value)
{
	inPlay = value;
}

int Car::GetGoals()
{
	return goals;
}

int Car::GetScore()
{
	return score;
}

bool Car::InPlay()
{
	return inPlay;
}

bool Car::IsInvincible() {
	return invincible != 0;
}

void Car::ReSpawn()
{
	/*
	Vector3 distance = startLocation - this->GetGameObject()->GetComponent<Rigidbody>()->GetPosition();
	std::cout << distance << std::endl;
	distance.y = 0.0f;
	distance.Normalize();
	
	this->GetGameObject()->GetComponent<Rigidbody>()->AddForce(distance);
sssssssssssssssssssss	*/
	p_GameObject->GetComponent<Transform>()->SetLocalPosition(startLocation);
	invincible = 5;
	p_GameObject->SetAlpha(0.7f);
	
	SetPlay(true);
}
NS_END