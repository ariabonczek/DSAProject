#pragma once

#include "../Config.hpp"

NS_BEGIN

class Collider;

/// <summary>
///
/// </summary>
class PhysicsContext
{
public:

	void Simulate(float timeStep);

	void AddCollidable(Collider* collider);

private:
	std::vector<Collider*> m_Collidables;
};

extern PhysicsContext g_PhysicsContext;

NS_END