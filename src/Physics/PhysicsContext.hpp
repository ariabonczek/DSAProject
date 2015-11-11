#pragma once

#include "../Config.hpp"

NS_BEGIN

class Collider;
class Rigidbody;

struct ContactContainer;

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

	std::vector<ContactContainer> contacts;
};

extern PhysicsContext g_PhysicsContext;

NS_END