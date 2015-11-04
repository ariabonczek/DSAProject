#include "BoxCollider.hpp"

NS_BEGIN

BoxCollider::BoxCollider(std::vector<Vector3> vertices)
{
	uint numVertices =vertices.size();

	if (numVertices == 0)
		return;

	m_Max = m_Min = vertices[0];

	for (uint i = 0; i < numVertices; ++i)
	{
		if (m_Min.x > vertices[i].x) 
			m_Min.x = vertices[i].x;
		else if (m_Max.x < vertices[i].x)
			m_Max.x = vertices[i].x;

		if (m_Min.y > vertices[i].y) 
			m_Min.y = vertices[i].y;
		else if (m_Max.y < vertices[i].y)
			m_Max.y = vertices[i].y;

		if (m_Min.z > vertices[i].z) 
			m_Min.z = vertices[i].z;
		else if (m_Max.z < vertices[i].z)
			m_Max.z = vertices[i].z;
	}

}

BoxCollider::BoxCollider(Vector3 min, Vector3 max)
{
	m_Min = min;
	m_Max = max;
}

BoxCollider::BoxCollider(Vector3 center, Vector3 halfSize, int dummy)
{
	m_Min = center - halfSize;
	m_Max = center + halfSize;
}

BoxCollider::BoxCollider(const BoxCollider& bc)
{
	m_Min = bc.m_Min;
	m_Max = bc.m_Max;
}

BoxCollider::~BoxCollider()
{

}

BoxCollider& BoxCollider::operator=(const BoxCollider& bc)
{
	m_Min = bc.m_Min;
	m_Max = bc.m_Max;
	return *this;
}

bool BoxCollider::CheckCollision(BoxCollider* bc)
{
	return (m_Min.x < bc->m_Max.x) && (m_Max.x > bc->m_Min.x) &&
		(m_Min.y < bc->m_Max.y) && (m_Max.y > bc->m_Min.y) &&
		(m_Min.z < bc->m_Max.z) && (m_Max.z > bc->m_Min.z);
}

void BoxCollider::SetCollisionFlag()
{
	std::cout << "Collision Detected!" << std::endl;
}

NS_END