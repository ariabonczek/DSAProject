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
				
				if (SAT(c1, c2))
				{
					c1->SetCollisionFlag(true);
					c2->SetCollisionFlag(true);

					c1->SetColor(Color::Red);
					c2->SetColor(Color::Red);
					
					
				}
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
	p_Colliders[index]->SetColor(color);
}
void PhysicsManager::SetVisible(uint index, bool value)
{
	p_Colliders[index]->SetVisibility(value);
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

bool PhysicsManager::SAT(BoxCollider* a, BoxCollider* b)
{
	bool val = CheckAxis(a->GetXAxis(), a, b) && CheckAxis(a->GetYAxis(), a, b) &&
		CheckAxis(a->GetZAxis(), a, b) && CheckAxis(b->GetXAxis(), a, b) &&
		CheckAxis(b->GetYAxis(), a, b) && CheckAxis(b->GetZAxis(), a, b) &&
		CheckAxis(Vector3::Cross(a->GetXAxis(), b->GetXAxis()), a, b) &&
		CheckAxis(Vector3::Cross(a->GetXAxis(), b->GetYAxis()), a, b) &&
		CheckAxis(Vector3::Cross(a->GetXAxis(), b->GetZAxis()), a, b) &&
		CheckAxis(Vector3::Cross(a->GetYAxis(), b->GetXAxis()), a, b) &&
		/*CheckAxis(Vector3::Cross(a->GetYAxis(), b->GetYAxis()), a, b) &&*/
		CheckAxis(Vector3::Cross(a->GetYAxis(), b->GetZAxis()), a, b) &&
		CheckAxis(Vector3::Cross(a->GetZAxis(), b->GetXAxis()), a, b) &&
		CheckAxis(Vector3::Cross(a->GetZAxis(), b->GetYAxis()), a, b) &&
		CheckAxis(Vector3::Cross(a->GetZAxis(), b->GetZAxis()), a, b);

	return val;
}

bool PhysicsManager::CheckAxis(Vector3 L, BoxCollider* a, BoxCollider* b)
{
	Vector3 T = b->GetCenterGlobal() - a->GetCenterGlobal();
	float d = abs(Vector3::Dot(T, L));

	float v2 = abs(Vector3::Dot((a->GetXAxis() * a->GetHalfWidth().x), L)) +
		abs(Vector3::Dot((a->GetYAxis() * a->GetHalfWidth().y), L)) +
		abs(Vector3::Dot((a->GetZAxis() * a->GetHalfWidth().z), L)) +
		abs(Vector3::Dot((b->GetXAxis() * b->GetHalfWidth().x), L)) +
		abs(Vector3::Dot((b->GetYAxis() * b->GetHalfWidth().y), L)) +
		abs(Vector3::Dot((b->GetZAxis() * b->GetHalfWidth().z), L));

	bool val = d < v2;
	return val;
}

NS_END