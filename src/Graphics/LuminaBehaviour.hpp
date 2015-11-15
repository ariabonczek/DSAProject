#pragma once

#include "../Config.hpp"

NS_BEGIN

class GameObject;

class LuminaBehaviour
{
public:
	LuminaBehaviour();
	virtual ~LuminaBehaviour();

	virtual void Initialize();
	virtual void Destroy();

	virtual void Update();

	virtual void OnEnable();
	virtual void OnDisable();

	virtual void OnCollisionEnter();
	virtual void OnCollisionStay();
	virtual void OnCollisionExit();

	virtual void OnTriggerEnter();
	virtual void OnTriggerStay();
	virtual void OnTriggerExit();

	virtual void OnAddToGameObject(GameObject* gameObject);

	GameObject* GetGameObject()const;
protected:
	GameObject* p_GameObject;
};

NS_END