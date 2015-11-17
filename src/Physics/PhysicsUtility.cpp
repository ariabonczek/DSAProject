#include "PhysicsUtility.hpp"

#include "Collider.hpp"
#include "Rigidbody.hpp"
#include "Shape.hpp"

#include "../Graphics/GameObject.hpp"
#include "../Graphics/Transform.hpp"

NS_BEGIN

bool SAT(Collider* c1, Collider* c2)
{
	bool ret = true;
	Transform* t1 = c1->GetGameObject()->GetTransform();
	Transform* t2 = c2->GetGameObject()->GetTransform();

	for (uint i = 0; i < c1->GetNumShapes(); ++i)
	{
		Shape* s1 = c1->GetShape(i);
		for (uint j = 0; j < c2->GetNumShapes(); ++j)
		{
			Shape* s2 = c2->GetShape(j);
			if (s1->m_Type == ShapeType::Box && 
				s2->m_Type == ShapeType::Box)
			{
				if (!SATBox_Box(c1->GetBox(i), c2->GetBox(i), t1, t2))
					return false;
			}
		}
	}

	return true;
}

bool SATBox_Box(Box* a, Box* b, Transform* t1, Transform* t2)
{
	Vector3 T = t2->GetLocalPosition() - t1->GetLocalPosition();

	Vector3 ax = t1->GetRight();
	Vector3 ay = t1->GetUp();
	Vector3 az = t1->GetForward();

	Vector3 bx = t2->GetRight();
	Vector3 by = t2->GetUp();
	Vector3 bz = t2->GetForward();

	// NOTE: Currently not checking cross of y and y
	bool val =
		CheckAxis(ax, T, a, b, ax, ay, az, bx, by, bz) && CheckAxis(bx, T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(ay, T, a, b, ax, ay, az, bx, by, bz) && CheckAxis(by, T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(az, T, a, b, ax, ay, az, bx, by, bz) && CheckAxis(bz, T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(ax, bx), T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(ax, by), T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(ax, bz), T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(ay, bx), T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(ay, bz), T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(az, bx), T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(az, by), T, a, b, ax, ay, az, bx, by, bz) &&
		CheckAxis(Vector3::Cross(az, bz), T, a, b, ax, ay, az, bx, by, bz);

	return val;
}

bool CheckAxis(Vector3 L, Vector3 T, Box* a, Box* b,
	Vector3 ax, Vector3 ay, Vector3 az, Vector3 bx, Vector3 by, Vector3 bz)
{
	float d = abs(Vector3::Dot(T, L));

	float v2 = 
		abs(Vector3::Dot((ax * a->m_HalfWidth.x), L)) +
		abs(Vector3::Dot((ay * a->m_HalfWidth.y), L)) +
		abs(Vector3::Dot((az * a->m_HalfWidth.z), L)) +
		abs(Vector3::Dot((bx * b->m_HalfWidth.x), L)) +
		abs(Vector3::Dot((by * b->m_HalfWidth.y), L)) +
		abs(Vector3::Dot((bz * b->m_HalfWidth.z), L));

	bool val = d < v2;
	return val;
}

NS_END