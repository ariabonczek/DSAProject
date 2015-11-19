#ifndef CAR_AI
#define CAR_AI

#include "../Graphics/LuminaBehaviour.hpp"

#include "../Car.h"
#include "../GameObjectManager.h"

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

	// AI values
	float turnThreshold;
	float minSpeed;
};

NS_END

#endif