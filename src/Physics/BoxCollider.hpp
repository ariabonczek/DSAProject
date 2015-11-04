#ifndef BOX_COLLIDER_HPP
#define BOX_COLLIDER_HPP

#include "../Config.hpp"

NS_BEGIN

class Transform;
class Mesh;
class Material;

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

	void SetCollisionFlag();

	void DebugDraw(Matrix view, Matrix projection);
private:
	BoxCollider();
	Transform* p_Transform;

	Mesh* m_DebugMesh;
	Material* m_DebugMaterial;

	Vector3 m_Max;
	Vector3 m_Min;
};

NS_END

#endif