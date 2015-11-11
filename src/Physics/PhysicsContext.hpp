#pragma once

#include "../Config.hpp"
#include "ContactContainer.hpp"

NS_BEGIN

class Collider;
class Rigidbody;

/// <summary>
///
/// </summary>
class PhysicsContext
{
public:

	/// <summary>
	/// 
	/// </summary>
	void Simulate(float timeStep);

	/// <summary>
	/// 
	/// </summary>
	void AddCollidable(Collider* collider);

private:
	std::vector<Collider*> m_Collidables;

	std::vector<ContactContainer> contacts;
};

extern PhysicsContext g_PhysicsContext;

NS_END