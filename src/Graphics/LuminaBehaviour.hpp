#pragma once

#include "../Config.hpp"

NS_BEGIN

class GameObject;
class Collider;

class LuminaBehaviour
{
public:
	LuminaBehaviour();
	virtual ~LuminaBehaviour();

	virtual void Initialize();
	virtual void Destroy();

	virtual void Update(float);

	virtual void OnEnable();
	virtual void OnDisable();

	virtual void OnCollision(Collider* c);

	virtual void OnAddToGameObject(GameObject* gameObject);

	GameObject* GetGameObject()const;
protected:
	GameObject* p_GameObject;
	uint id;
};

NS_END