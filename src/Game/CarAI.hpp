#ifndef CAR_AI
#define CAR_AI

#include "../Graphics/LuminaBehaviour.hpp"
#include "Goal.h"
#include "../Car.h"
#include "../GameObjectManager.h"
class Goal;

NS_BEGIN

class CarAI : public LuminaBehaviour {
public:
	CarAI();
	void Initialize();
	void OnAddToGameObject(GameObject*);
	void Update(float);

private:
	// references
	Car *thisCar;
	GameObject *thisObj;
	GameObjectManager *objManager;

	std::vector<GameObject*> goalList;

	// AI values
	float turnThreshold;
	float minSpeed;
};

NS_END

#endif