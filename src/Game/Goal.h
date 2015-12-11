#pragma once
#ifndef GOALS_H
#define GOALS_H

#include "../Graphics/Transform.hpp"
#include "../Graphics/GameObject.hpp"
#include "../Graphics/LuminaBehaviour.hpp"
#include "../GameObjectManager.h"
#include "../Physics/Collider.hpp"
#include "../Physics/Rigidbody.hpp"

NS_BEGIN
class Goal : public LuminaBehaviour
{
public:
	Goal();
	Goal(const Goal& goal);
	~Goal();

	Goal& operator=(const Goal& goal);

	void Initialize();
	void OnAddToGameObject(GameObject* object);
	void Update(float dt);

	void OnTrigger(Collider* c);

private:
	Transform* p_CachedTransform;
	Collider* p_Collider;

	GameObjectManager* objManager;
	Rigidbody *rb;
	GameObject* go;
};

NS_END
#endif