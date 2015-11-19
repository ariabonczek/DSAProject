#pragma once

#include "../Config.hpp"
#include "LuminaBehaviour.hpp"

NS_BEGIN

class GameObject;

class CollectibleBehaviour : public LuminaBehaviour{
	CollectibleBehaviour();
	~CollectibleBehaviour();


	virtual void Initialize();
	virtual void Destroy();

	virtual void OnEnable();

	virtual void OnTriggerEnter();
};

NS_END