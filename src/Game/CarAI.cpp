#include "CarAI.hpp"

#include "../Math/LVector.hpp"

#include <iostream>
#include <vector>

NS_BEGIN

CarAI::CarAI() {}


void CarAI::Initialize() {
	turnThreshold = 0.05f;
	minSpeed = 1;
}

void CarAI::OnAddToGameObject(GameObject *obj) {
	LuminaBehaviour::OnAddToGameObject(obj);

	thisCar = obj->GetComponent<Car>();
	thisObj = obj;
	objManager = GameObjectManager::GetInstance();

	goalList = objManager->GetGoalObjects();
}

void CarAI::Update(float dt) {
	// seek nearest other opponent cars
	Vector3 desiredPoint = thisObj->GetTransform()->GetWorldPosition() + thisObj->GetTransform()->GetForward(); // default is just move forward

	std::vector<GameObject*> seekCars;
	if (!thisCar->IsEnemy()) seekCars = objManager->GetEnemyTeamList();
	else { seekCars = objManager->GetPlayerTeamList(); }

	float minDist = 100000;
	for (int i = 0; i < seekCars.size(); i++) {
		GameObject *obj = seekCars[i];

		// find closest goal to current car
		float minGoalDist = 10000;
		for (int ii = 0; ii < goalList.size(); ii++) {
			float dist = objManager->calcDistance(obj, goalList[i]);
			if (dist < minGoalDist) minGoalDist = dist;
		}

		// compare distance to this car and closest goal
		float dist = objManager->calcDistance(obj, thisObj) + minGoalDist;
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
	if (sidewaysDot >= turnThreshold) {
		thisCar->TurnRight(dt * 1.0f);
	}
	else if (sidewaysDot <= -turnThreshold) {
		thisCar->TurnLeft(dt * 1.0f);
	}
}

NS_END