#pragma once

#include "../Config.hpp"
#include "ContactContainer.hpp"
#include "Grid.hpp"
#include <unordered_map>
#include <vector>

NS_BEGIN

class Collider;
class Rigidbody;

class GameObject;

struct PhysicsObject
{
	Collider* collider;
	Rigidbody* rigidbody;
};

/// <summary>
///
/// </summary>
class PhysicsContext
{
public:

	/// <summary>
	/// NOTE: MUST BE CALLED AFTER THE OBJECTS HAVE BEEN INITIALIZED
	/// </summary>
	void Initialize(std::unordered_map<uint, GameObject*> allObjects);

	/// <summary>
	/// 
	/// </summary>
	void Simulate(float timeStep);

	/// <summary>
	/// 
	/// </summary>
	void AddCollidable(Collider* collider);

	void DeleteObjects();

private:
	Grid grid;

	std::vector<PhysicsObject> m_Objects;
	uint numCollidables;

	std::vector<CoarseContainer> coarse;
	std::vector<ContactContainer> contacts;
};

extern PhysicsContext g_PhysicsContext;

NS_END