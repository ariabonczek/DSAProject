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
				c1->SetCollisionFlag(true);
				c2->SetCollisionFlag(true);

				c1->SetColor(Color::Red);
				c2->SetColor(Color::Red);
			}
		}
	}
}

void PhysicsManager::AddCollider(BoxCollider* bc)
{
	p_Colliders.push_back(bc);
}

uint PhysicsManager::GetNumColliders()const
{
	return p_Colliders.size();
}

void PhysicsManager::SetColor(uint index, Color color)
{

}
void PhysicsManager::SetVisible(uint index, bool value)
{
	
}

void PhysicsManager::RenderAt(uint index)
{
	p_Colliders[index]->DebugDraw(Matrix::Identity, Matrix::Identity);
}

void PhysicsManager::RenderAll(Matrix view, Matrix projection)
{
	for (uint i = 0; i < p_Colliders.size(); ++i)
	{
		p_Colliders[i]->DebugDraw(view, projection);
	}
}

NS_END