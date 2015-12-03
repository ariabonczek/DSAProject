#include "CarAI.hpp"

#include "../Math/LVector.hpp"

#include <iostream>
#include <vector>

NS_BEGIN

CarAI::CarAI() {}


void CarAI::Initialize() {
	turnThreshold = 0.5f;
	minSpeed = 1;
}

void CarAI::OnAddToGameObject(GameObject *obj) {
	LuminaBehaviour::OnAddToGameObject(obj);

	thisCar = obj->GetComponent<Car>();
	thisObj = obj;
	objManager = GameObjectManager::GetInstance();
}

void CarAI::Update(float dt) {
	// seek nearest other opponent cars
	float minDist = 10000;
	Vector3 desiredPoint = thisObj->GetTransform()->GetWorldPosition() + thisObj->GetTransform()->GetForward(); // default is just move forward

	std::vector<GameObject*> seekCars;
	if (thisCar->IsEnemy()) seekCars = objManager->GetEnemyTeamList();
	else { seekCars = objManager->GetPlayerTeamList(); }

	for (int i = 0; i < seekCars.size(); i++) {
		GameObject *obj = seekCars[i];

		float dist = objManager->calcDistance(obj, thisObj);
		if (dist < minDist) {
			dist = minDist;

			desiredPoint = obj->GetTransform()->GetWorldPosition();
		}
	}

	Vector3 delta = desiredPoint - thisObj->GetTransform()->GetWorldPosition();

	// speed
	float forwardDot = Vector3::Dot(delta, thisObj->GetTransform()->GetForward());

	if (forwardDot >= 0) thisCar->Accelerate(thisObj->GetTransform()->GetForward() * dt);
	else { thisCar->Accelerate(thisObj->GetTransform()->GetForward() * -dt); }

	// turning
	float sidewaysDot = Vector3::Dot(delta, thisObj->GetTransform()->GetRight());
	if (sidewaysDot >= turnThreshold) thisCar->TurnRight(-dt * 10.0f);
	else if (sidewaysDot <= -turnThreshold) thisCar->TurnLeft(dt * 10.0f);
}

NS_END