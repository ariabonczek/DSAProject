#ifndef BOX_COLLIDER_HPP
#define BOX_COLLIDER_HPP

#include "../Config.hpp"
#include "../Graphics/Data.hpp"

NS_BEGIN

class Transform;
class Mesh;
class Material;
class Collectible;

/// <summary>
///
/// </summary>
class BoxCollider
{
public:
	BoxCollider(std::vector<Vector3> vertices, Transform* t);
	BoxCollider(Vector3 min, Vector3 max, Transform* t);
	BoxCollider(Vector3 center, Vector3 halfSize, int dummy, Transform* t);
	BoxCollider(const BoxCollider& bc);
	~BoxCollider();

	BoxCollider& operator=(const BoxCollider& bc);

	bool CheckCollision(BoxCollider* bc);

	bool GetCollisionFlag()const;
	void SetCollisionFlag(bool value);
	
	/// <summary>
	///
	/// </summary>
	void DebugDraw(Matrix view, Matrix projection);

	void SetModelMatrix(Matrix worldMatrix);
	Matrix GetModelMatrix(void)const;

	Vector3 GetMin()const;
	Vector3 GetMax()const;

	Vector3 GetCenterLocal(void)const;
	Vector3 GetCenterGlobal(void)const;

	Vector3 GetHalfWidth(void)const;
	//half width of reoriented object
	Vector3 O_GetHalfWidth(void)const;

	void SetColor(Color color);

	void SetVisibility(bool value);
	bool GetVisibility(void)const;
private:
	BoxCollider();
	Transform* p_Transform;

	bool collisionFlag;
	bool isVisible;

	Collectible* c;
	Mesh* m_DebugMesh;
	Mesh* m_DebugOuterMesh;
	Material* m_DebugMaterial;

	Vector3 m_Max;
	Vector3 m_Min;
	Vector3 m_Center;
	Vector3 m_HalfWidth;

	Vector3 m_OMin;
	Vector3 m_OMax;
	Vector3 m_OCenter;
	Vector3 m_OHalfWidth;
};

NS_END

#endif