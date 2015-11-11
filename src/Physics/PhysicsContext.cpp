#include "PhysicsContext.hpp"

NS_BEGIN

PhysicsContext g_PhysicsContext;

void PhysicsContext::Simulate(float timeStep)
{

}

void PhysicsContext::AddCollidable(Collider* collider)
{
	m_Collidables.push_back(collider);
}

NS_END