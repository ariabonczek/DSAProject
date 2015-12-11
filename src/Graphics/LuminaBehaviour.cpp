#include "LuminaBehaviour.hpp"
#include "../GameObjectManager.h"
//
NS_BEGIN


LuminaBehaviour::LuminaBehaviour()
{
	//id = GameObjectManager::GetInstance()->GetNextID();
}

LuminaBehaviour::~LuminaBehaviour()
{}

void LuminaBehaviour::Initialize()
{}

void LuminaBehaviour::Destroy()
{
}

void LuminaBehaviour::Update(float dt)
{}

void LuminaBehaviour::OnEnable()
{}

void LuminaBehaviour::OnDisable()
{}

void LuminaBehaviour::OnCollision(Collider* c)
{}

void LuminaBehaviour::OnTrigger(Collider* c)
{}

void LuminaBehaviour::OnAddToGameObject(GameObject* gameObject)
{
	if (p_GameObject)
	{
#if _DEBUG
		//std::cout << "[LuminaBehaviour] Tried to add a second LuminaBehaviour instance to a GameObject." << std::endl;
#endif
		return;
	}
	p_GameObject = gameObject;
	return;
}

GameObject* LuminaBehaviour::GetGameObject()const
{
	return p_GameObject;
}

NS_END