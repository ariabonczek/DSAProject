#ifndef BOX_COLLIDER_HPP
#define BOX_COLLIDER_HPP

#include "../Config.hpp"

NS_BEGIN

class BoxCollider
{
public:
	BoxCollider(std::vector<Vector3> vertices);
	BoxCollider(Vector3 min, Vector3 max);
	BoxCollider(Vector3 center, Vector3 halfSize, int dummy = 0);
	BoxCollider(const BoxCollider& bc);
	~BoxCollider();

	BoxCollider& operator=(const BoxCollider& bc);

	bool CheckCollision(BoxCollider* bc);

	void SetCollisionFlag();
private:
	Vector3 m_Max;
	Vector3 m_Min;
};

NS_END

#endif