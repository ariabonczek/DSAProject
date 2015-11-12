#ifndef PHYSICS_MANAGER_HPP
#define PHYSICS_MANAGER_HPP

#include "../Config.hpp"
#include "../Graphics/Data.hpp"

NS_BEGIN

class BoxCollider;

/// <summary>
///
/// </summary>
class PhysicsManager
{
public:

	PhysicsManager();
	~PhysicsManager();

	/// <summary>
	///
	/// </summary>
	void Simulate(float timeStep);

	/// <summary>
	///
	/// </summary>
	void AddCollider(BoxCollider* bc);

	/// <summary>
	///
	/// </summary>
	uint GetNumColliders()const;

	/// <summary>
	///
	/// </summary>
	void SetColor(uint index, Color color);

	/// <summary>
	///
	/// </summary>
	void SetVisible(uint index, bool value);

	/// <summary>
	///
	/// </summary>
	void RenderAt(uint index);

	/// <summary>
	///
	/// </summary>
	void RenderAll(Matrix view, Matrix projection);

	static bool SAT(BoxCollider* a, BoxCollider* b);

	static bool CheckAxis(Vector3 L, BoxCollider* a, BoxCollider* b);
private:

	std::vector<BoxCollider*> p_Colliders;

};

extern PhysicsManager g_PhysicsManager;

NS_END

#endif