#include "PhysicsManager.hpp"

#include "BoxCollider.hpp"

NS_BEGIN

PhysicsManager g_PhysicsManager;

PhysicsManager::PhysicsManager()
{}

PhysicsManager::~PhysicsManager()
{}

void PhysicsManager::Simulate(float timeStep)
{
	if (p_Colliders.size() <= 1)
		return;

	for (uint i = 0; i < p_Colliders.size() - 1; ++i)
	{
		BoxCollider* c1 = p_Colliders[i];
		for (uint j = i + 1; j < p_Colliders.size(); ++j)
		{
			BoxCollider* c2 = p_Colliders[j];

			if (c1->CheckCollision(c2))
			{
				c1->SetCollisionFlag();
				c2->SetCollisionFlag();
			}
		}
	}
}

void PhysicsManager::AddCollider(BoxCollider* bc)
{
	p_Colliders.push_back(bc);
}

NS_END