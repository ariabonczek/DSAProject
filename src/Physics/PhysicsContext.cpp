#include "PhysicsContext.hpp"

NS_BEGIN

PhysicsContext g_PhysicsContext;

void PhysicsContext::Simulate(float timeStep)
{
	throw "Not implemented";

	// Apply external forces

	// Coarse Collision Detection
	
	// Fine Collision Detection

	// Collision Resolution

	// Integrate results
}

void PhysicsContext::AddCollidable(Collider* collider)
{
	m_Collidables.push_back(collider);
}

NS_END