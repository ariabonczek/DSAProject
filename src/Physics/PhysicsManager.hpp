#ifndef PHYSICS_MANAGER_HPP
#define PHYSICS_MANAGER_HPP

#include "../Config.hpp"

NS_BEGIN

class BoxCollider;

class PhysicsManager
{
public:
	PhysicsManager();
	~PhysicsManager();

	void Simulate(float timeStep);

	void AddCollider(BoxCollider* bc);

private:

	std::vector<BoxCollider*> p_Colliders;

};

extern PhysicsManager g_PhysicsManager;

NS_END

#endif