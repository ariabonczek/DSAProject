#include "PhysicsUtility.hpp"

#include "Collider.hpp"
#include "Rigidbody.hpp"
#include "Shape.hpp"
#include "ContactContainer.hpp"

#include "../Graphics/GameObject.hpp"
#include "../Graphics/Transform.hpp"

NS_BEGIN

Matrix CreateBoxInertia(Box* box, float mass)
{
	float denom = 1.0f / 12.0f;
	float mass12 = denom * mass;
	float x2 = box->m_HalfWidth.x * box->m_HalfWidth.x;
	float y2 = box->m_HalfWidth.y * box->m_HalfWidth.y;
	float z2 = box->m_HalfWidth.z * box->m_HalfWidth.z;

	return Matrix::Inverse(Matrix(
		mass12 * (y2 + z2), 0.0f, 0.0f, 0.0f,
		0.0f, mass12 * (x2 + z2), 0.0f, 0.0f,
		0.0f, 0.0f, mass12 * (x2 + y2), 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f));
}

Matrix CreateSphereInertia(Sphere* sphere, float mass)
{
	float num = (2.0f / 5.0f) * mass * sphere->m_Radius * sphere->m_Radius;

	return Matrix::Inverse(Matrix(
		num, 0.0f, 0.0f, 0.0f,
		0.0f, num, 0.0f, 0.0f,
		0.0f, 0.0f, num, 0.0f,
		0.0f, 0.0f, 0.0f, 1.0f));
}

//-------------------------------------------------------------------------------------------
// Collision Detection
//-------------------------------------------------------------------------------------------

bool SAT(Collider* c1, Collider* c2)
{
	Transform* t1 = c1->GetGameObject()->GetTransform();
	Transform* t2 = c2->GetGameObject()->GetTransform();

	for (uint i = 0; i < c1->GetNumShapes(); ++i)
	{
		Shape* s1 = c1->GetShape<Shape>(i);
		for (uint j = 0; j < c2->GetNumShapes(); ++j)
		{
			Shape* s2 = c2->GetShape<Shape>(j);

			//
			// Box-Box
			//
			if (s1->m_Type == ShapeType::Box && 
				s2->m_Type == ShapeType::Box)
			{
				if (!SATBox_Box(c1->GetBox(i), c2->GetBox(i), t1, t2))
					return false;
				continue;
			}

			//
			// Box-Sphere
			//
			if ((s1->m_Type == ShapeType::Box && s2->m_Type == ShapeType::Sphere))
			{
				if (!SATBox_Sphere(c1->GetBox(i), c2->GetSphere(i), t1, t2))
					return false;
				continue;
			}

			//
			// Sphere-Box
			//
			if ((s1->m_Type == ShapeType::Sphere && s2->m_Type == ShapeType::Box))
			{
				if (!SATBox_Sphere(c2->GetBox(i), c1->GetSphere(i), t1, t2))
					return false;
				continue;
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

bool SATBox_Sphere(Box* b, Sphere* s, Transform* t1, Transform* t2)
{
	Vector3 relCenter = t1->InverseTransformPoint(t2->GetLocalPosition() + s->m_Offset);

	float width_radiusX = b->m_HalfWidth.x + s->m_Radius;
	float width_radiusY = b->m_HalfWidth.y + s->m_Radius;
	float width_radiusZ = b->m_HalfWidth.z + s->m_Radius;

	return abs(relCenter.x) < width_radiusX &&
		abs(relCenter.y) < width_radiusY &&
		abs(relCenter.z) < width_radiusZ;
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

//---------------------------------------------------------------------------------------------------------
// Contact Generation
//---------------------------------------------------------------------------------------------------------

uint ContactGeneration(Collider* c1, Collider* c2, ContactContainer& cc)
{
	Shape* s1 = c1->GetShape<Shape>(0);
	Shape* s2 = c2->GetShape<Shape>(0);

	Transform* t1 = c1->GetGameObject()->GetTransform();
	Transform* t2 = c2->GetGameObject()->GetTransform();

	uint ret = 0;

	if (s1->m_Type == ShapeType::Box && s2->m_Type == ShapeType::Box)
	{
		ret = BoxBoxContact(c1->GetBox(0), c2->GetBox(0), t1, t2, cc);
	}

	if (s1->m_Type == ShapeType::Box && s2->m_Type == ShapeType::Sphere)
	{
		ret = BoxSphereContact(c1->GetBox(0), c2->GetSphere(0), t1, t2,cc);
	}

	if (s1->m_Type == ShapeType::Sphere && s2->m_Type == ShapeType::Box)
	{
		ret = BoxSphereContact(c2->GetBox(0), c1->GetSphere(0), t1, t2,cc);
	}

	cc.rigidbody[0] = c1->GetRigidbody();
	cc.rigidbody[1] = c2->GetRigidbody();
	cc.objectOrigin[0] = t1->GetLocalPosition();
	cc.objectOrigin[1] = t2->GetLocalPosition();

	if (!cc.rigidbody[0])
	{
		if (cc.rigidbody[1])
		{
			std::swap(cc.rigidbody[0], cc.rigidbody[1]);
		}
	}

	return ret;
}

uint BoxBoxContact(Box* b1, Box* b2, Transform* t1, Transform* t2, ContactContainer& cc)
{
	uint ret = 0;
	Vector3 v1 = t1->GetLocalPosition();
	
	Vector3 vertices1[8] = {
		Vector3(v1.x + b1->m_HalfWidth.x, v1.y + b1->m_HalfWidth.y, v1.z + b1->m_HalfWidth.z),
		Vector3(v1.x + b1->m_HalfWidth.x, v1.y + b1->m_HalfWidth.y, v1.z - b1->m_HalfWidth.z),

		Vector3(v1.x + b1->m_HalfWidth.x, v1.y - b1->m_HalfWidth.y, v1.z + b1->m_HalfWidth.z),
		Vector3(v1.x + b1->m_HalfWidth.x, v1.y - b1->m_HalfWidth.y, v1.z - b1->m_HalfWidth.z),

		Vector3(v1.x - b1->m_HalfWidth.x, v1.y + b1->m_HalfWidth.y, v1.z + b1->m_HalfWidth.z),
		Vector3(v1.x - b1->m_HalfWidth.x, v1.y + b1->m_HalfWidth.y, v1.z - b1->m_HalfWidth.z),

		Vector3(v1.x - b1->m_HalfWidth.x, v1.y - b1->m_HalfWidth.y, v1.z + b1->m_HalfWidth.z),
		Vector3(v1.x - b1->m_HalfWidth.x, v1.y - b1->m_HalfWidth.y, v1.z - b1->m_HalfWidth.z)
	};

	for (uint i = 0; i < 8; ++i)
	{
		ContactContainer temp;
		BoxVertexContact(b2, t2, vertices1[i], temp);
		
		if (temp.penetrationDepth > cc.penetrationDepth)
		{
			ret = 1;
			cc = temp;
		}
	}

	// TODO: Add in edge-edge

	//Vector3 v2 = t2->GetLocalPosition();
	//
	//Vector3 vertices2[8] = {
	//	Vector3(v2.x + b2->m_HalfWidth.x, v2.y + b2->m_HalfWidth.y, v2.z + b2->m_HalfWidth.z),
	//	Vector3(v2.x + b2->m_HalfWidth.x, v2.y + b2->m_HalfWidth.y, v2.z - b2->m_HalfWidth.z),
	//
	//	Vector3(v2.x + b2->m_HalfWidth.x, v2.y - b2->m_HalfWidth.y, v2.z + b2->m_HalfWidth.z),
	//	Vector3(v2.x + b2->m_HalfWidth.x, v2.y - b2->m_HalfWidth.y, v2.z - b2->m_HalfWidth.z),
	//
	//	Vector3(v2.x - b2->m_HalfWidth.x, v2.y + b2->m_HalfWidth.y, v2.z + b2->m_HalfWidth.z),
	//	Vector3(v2.x - b2->m_HalfWidth.x, v2.y + b2->m_HalfWidth.y, v2.z - b2->m_HalfWidth.z),
	//
	//	Vector3(v2.x - b2->m_HalfWidth.x, v2.y - b2->m_HalfWidth.y, v2.z + b2->m_HalfWidth.z),
	//	Vector3(v2.x - b2->m_HalfWidth.x, v2.y - b2->m_HalfWidth.y, v2.z - b2->m_HalfWidth.z)
	//};
	//
	//Edge edges1[12] = {
	//	// Top
	//	Edge(vertices1[0], vertices1[1]), Edge(vertices1[1], vertices1[5]),
	//	Edge(vertices1[5], vertices1[4]), Edge(vertices1[4], vertices1[0]),
	//
	//	// Middle
	//	Edge(vertices1[0], vertices1[2]), Edge(vertices1[1], vertices1[3]),
	//	Edge(vertices1[5], vertices1[7]), Edge(vertices1[4], vertices1[6]),
	//
	//	// Bottom
	//	Edge(vertices1[2], vertices1[3]), Edge(vertices1[3], vertices1[7]),
	//	Edge(vertices1[7], vertices1[6]), Edge(vertices1[6], vertices1[2])
	//};
	//
	//Edge edges2[12] = {
	//	// Top
	//	Edge(vertices2[0], vertices2[1]), Edge(vertices2[1], vertices2[5]),
	//	Edge(vertices2[5], vertices2[4]), Edge(vertices2[4], vertices2[0]),
	//
	//	// Middle
	//	Edge(vertices2[0], vertices2[2]), Edge(vertices2[1], vertices2[3]),
	//	Edge(vertices2[5], vertices2[7]), Edge(vertices2[4], vertices2[6]),
	//
	//	// Bottom
	//	Edge(vertices2[2], vertices2[3]), Edge(vertices2[3], vertices2[7]),
	//	Edge(vertices2[7], vertices2[6]), Edge(vertices2[6], vertices2[2])
	//};
	//
	//for (uint i = 0; i < 12; ++i)
	//{
	//	for (uint j = 0; j < 12; ++j)
	//	{
	//		ContactContainer temp;
	//		if (EdgeEdgeContact(edges1[i], edges2[j], temp))
	//		{
	//			if (temp.penetrationDepth > cc.penetrationDepth)
	//			{
	//				ret = 1;
	//				cc = temp;
	//			}
	//		}
	//	}
	//}

	return ret;
}

bool BoxVertexContact(Box* b, Transform* t, Vector3 v, ContactContainer& cc)
{
	v = t->InverseTransformPoint(v);
	
	Vector3 normal;

	float minDepth = b->m_HalfWidth.x - abs(v.x);
	if (minDepth < 0) return 0.0f;
	normal = t->GetRight() * ((v.x < 0.0f) ? -1.0f : 1.0f);

	float depth = b->m_HalfWidth.y - abs(v.y);
	//if (depth < 0) return 0;
	//else if (depth < minDepth)
	//{
	//	minDepth = depth;
	//	normal = t->GetUp() * ((v.y < 0.0f) ? -1.0f : 1.0f);
	//}
	
	depth = b->m_HalfWidth.z - abs(v.z);
	if (depth < 0) return 0;
	else if (depth < minDepth)
	{
		minDepth = depth;
		normal = t->GetForward() * ((v.z < 0.0f) ? -1.0f : 1.0f);
	}

	cc.contactNormal = normal;
	cc.contactPoint = t->TransformPoint(v);
	cc.penetrationDepth = minDepth;
	
	return 1;
}

bool EdgeEdgeContact(Edge e1, Edge e2, ContactContainer& cc)
{
	// TODO: THIS
	Vector3 p1, p2;
	float penetration = EdgeEdgeClosestPoints(e1.a, e1.b, e2.a, e2.b, p1, p2);
	return true;
}

uint BoxSphereContact(Box* b, Sphere* s, Transform* t1, Transform* t2, ContactContainer& cc)
{
	Vector3 closestPoint;
	Vector3 sphereCenter = t2->GetLocalPosition() + s->m_Offset;
	Vector3 relCenter = t1->InverseTransformPoint(sphereCenter);

	float distance;

	distance = relCenter.x;
	if (distance > b->m_HalfWidth.x)
		distance = b->m_HalfWidth.x;
	if (distance < -b->m_HalfWidth.x)
		distance = -b->m_HalfWidth.x;
	closestPoint.x = distance;

	distance = relCenter.y;
	if (distance > b->m_HalfWidth.y)
		distance = b->m_HalfWidth.y;
	if (distance < -b->m_HalfWidth.y)
		distance = -b->m_HalfWidth.y;
	closestPoint.y = distance;

	distance = relCenter.z;
	if (distance > b->m_HalfWidth.z)
		distance = b->m_HalfWidth.z;
	if (distance < -b->m_HalfWidth.z)
		distance = -b->m_HalfWidth.z;
	closestPoint.z = distance;

	distance = (closestPoint - relCenter).Length();
	if (distance > s->m_Radius)
		return 0;

	cc.contactPoint = t1->TransformPoint(closestPoint);
	cc.contactNormal = (sphereCenter - cc.contactPoint).Normalized();
	cc.penetrationDepth = s->m_Radius - distance;

	return 1;
}

//------------------------------------------------------------------------------
// Closest Points
//------------------------------------------------------------------------------

float EdgeEdgeClosestPoints(Vector3 a1, Vector3 a2, Vector3 b1, Vector3 b2, Vector3& p1, Vector3& p2)
{
	Vector3 va = a1 - a2; float a = Vector3::Dot(va, va);
	Vector3 vb = b1 - b2; float b = Vector3::Dot(vb, vb);
	Vector3 r  = a1 - b1; float f = Vector3::Dot(vb, r);

	float s = 0.0f, t = 0.0f;

	if (a <= EPSILON || b <= EPSILON)
	{
		s = 0.0f;
		t = Clamp(f / b, 0.0f, 1.0f);
	}
	else
	{
		float c = Vector3::Dot(va, r);
		if (b <= EPSILON)
		{
			t = 0.0f;
			s = Clamp(-c / a, 0.0f, 1.0f);
		}
		else
		{
			float d = Vector3::Dot(va, vb);
			float denom = a * b - d * d;
			if (denom != 0.0f)
			{
				s = Clamp((d * f - c * b) / denom, 0.0f, 1.0f);
			}
			else
			{
				s = 0.0f;
			}

			t = (d * s + f) / b;
			if (t < 0.0f)
			{
				t = 0.0f; s = Clamp(-c / a, 0.0f, 1.0f);
			}
			else if (t > 1.0f)
			{
				t = 1.0f; s = Clamp((d - c) / a, 0.0f, 1.0f);
			}
		}
	}

	p1 = a1 + va * s;
	p2 = b1 + vb * t;
	return Vector3::Dot(p1 - p2, p1 - p2);
}

//------------------------------------------------------------------------------------------------------------
// Collision Resolution
//------------------------------------------------------------------------------------------------------------

float CalculateSeparatingVelocity(Rigidbody* r1, Rigidbody* r2)
{
	Transform* t1 = r1->GetGameObject()->GetTransform();
	Transform* t2 = r2->GetGameObject()->GetTransform();

	Vector3 v = r1->GetLinearVelocity() - r2->GetLinearVelocity();
	Vector3 n = (t1->GetLocalPosition() - t2->GetLocalPosition()).Normalized();

	return Vector3::Dot(v, n);
}

void CreateBasisAxes(Vector3 x, Vector3& y, Vector3& z)
{
	if (abs(x.x) > abs(x.y))
	{
		float s = 1.0f / sqrtf(x.z * x.z + x.x * x.x);

		y.x = x.z*s;
		y.y = 0.0f;
		y.z = -x.x*s;

		z.x = x.y * y.x;
		z.y = z.z * y.x - z.x * y.z;
		z.z = -x.y * y.x;
	}
	else
	{
		float s = 1.0f / sqrtf(x.z*x.z + x.y*x.y);

		y.x = 0.0f;
		y.y = -x.z*s;
		y.z = x.y*s;

		z.x = x.y*y.z - x.z*y.y;
		z.y = -x.x*y.z;
		z.z = x.x*y.y;
	}
}

void ResolveCollision(ContactContainer cc)
{
	// 1. Create basis matrix
	
	Vector3 y, z;

	CreateBasisAxes(cc.contactNormal, y, z);
	Matrix basisMatrix(cc.contactNormal, y, z);

	// 2. Calculate change in velocity by unit impulse

		float deltaVelocity = 0.0f;
		
		Vector3 relativeQ1 = cc.contactPoint - cc.objectOrigin[0];
		Vector3 relativeQ2 = cc.contactPoint - cc.objectOrigin[1];

		// First Object
		if(cc.rigidbody[0])
		{
			// Linear
			deltaVelocity += 1.0f / cc.rigidbody[0]->GetMass();

			// Angular
			Vector3 torquePerUnitImpulse = Vector3::Cross(relativeQ1, cc.contactNormal);
			Vector3 rotationPerUnitImpulse = torquePerUnitImpulse * cc.rigidbody[0]->GetInertia();
			Vector3 velocityPerUnitImpulse = Vector3::Cross(rotationPerUnitImpulse, relativeQ1);

			float angularComponent = Vector3::Dot(velocityPerUnitImpulse, cc.contactNormal);

			deltaVelocity += angularComponent;
		}

		// Second Object
		if (cc.rigidbody[1])
		{
			// Linear
			deltaVelocity += 1.0f / cc.rigidbody[0]->GetMass();

			// Angular
			Vector3 torquePerUnitImpulse = Vector3::Cross(relativeQ2, cc.contactNormal);
			Vector3 rotationPerUnitImpulse = torquePerUnitImpulse * cc.rigidbody[1]->GetInertia();
			Vector3 velocityPerUnitImpulse = Vector3::Cross(rotationPerUnitImpulse, relativeQ2);

			float angularComponent = Vector3::Dot(velocityPerUnitImpulse, cc.contactNormal);

			deltaVelocity += angularComponent;
		}

	// 3. Impulse change by velocity

		// g = v / d

	// 4. Calculate desired change in velocity

		// First Object
		float desiredDeltaVelocity = 0.0f;
		if(cc.rigidbody[0])
		{
			// Calculate Closing Velocity
			Vector3 velocity = Vector3::Cross(cc.rigidbody[0]->GetAngularVelocity(), relativeQ1);
			
			velocity += cc.rigidbody[0]->GetLinearVelocity();

			Vector3 contactVelocity = velocity * basisMatrix;

			// Calculate Desired Change in Velocity
			desiredDeltaVelocity += -contactVelocity.x * (1 + cc.rigidbody[0]->GetRestitution());
		}

		// Second Object
		if(cc.rigidbody[1])
		{
			// Calculate Closing Velocity
			Vector3 velocity = Vector3::Cross(cc.rigidbody[1]->GetAngularVelocity(), relativeQ2);
			velocity += cc.rigidbody[1]->GetLinearVelocity();

			Vector3 contactVelocity = velocity * basisMatrix;

			// Calculate Desired Change in Velocity
			desiredDeltaVelocity += -contactVelocity.x * (1 + cc.rigidbody[1]->GetRestitution());
		}
	// 5. Calculate the impulse

		Vector3 impulseContact;
		
		impulseContact.x = desiredDeltaVelocity / deltaVelocity;
		impulseContact.y = 0.0f;
		impulseContact.z = 0.0f;

		Vector3 impulse = impulseContact * Matrix::Inverse(basisMatrix);

	// 6. Apply the impulse

		// First Object
		if (cc.rigidbody[0])
		{
			Vector3 impulsiveTorque = Vector3::Cross(impulse, relativeQ1);

			impulse.y = 0.0f;
			impulsiveTorque.x = 0.0f;
			impulsiveTorque.z = 0.0f;

			cc.rigidbody[0]->AddForce(impulse);
			cc.rigidbody[0]->AddTorque(impulsiveTorque);
		}

		impulse = impulse * -1.0f;

		if (cc.rigidbody[1])
		{
			Vector3 impulsiveTorque = Vector3::Cross(impulse, relativeQ2);

			impulse.y = 0.0f;
			impulsiveTorque.x = 0.0f;
			impulsiveTorque.z = 0.0f;

			cc.rigidbody[1]->AddForce(impulse);
			cc.rigidbody[1]->AddTorque(impulsiveTorque);
		}
}

void ResolveCollisionSimple(ContactContainer cc)
{
	Vector3 v;
	Vector3 n = cc.contactNormal;

	if (cc.rigidbody[0])
	{
		v = cc.rigidbody[0]->GetLinearVelocity();
	}

	if (cc.rigidbody[1])
	{
		v -= cc.rigidbody[1]->GetLinearVelocity();
	}

	float separatingVelocity = Vector3::Dot(v, n);

	if (separatingVelocity > 0)
		return;

	float newSeparatingVelocity = -separatingVelocity;

	float delta = newSeparatingVelocity - separatingVelocity;

	if (cc.rigidbody[0])
	{
		cc.rigidbody[0]->AddForce(delta * n);
		cc.rigidbody[0]->ClampLinearVelocity();
	}
	
	if (cc.rigidbody[1])
	{
		cc.rigidbody[1]->AddForce(delta * -n);
		cc.rigidbody[1]->ClampLinearVelocity();
	}	

}

void ResolveCollision(Rigidbody* r1, Rigidbody* r2)
{
	Transform* t1 = r1->GetGameObject()->GetTransform();
	Transform* t2 = r2->GetGameObject()->GetTransform();

	Vector3 v = r1->GetLinearVelocity() - r2->GetLinearVelocity();
	Vector3 n = (t1->GetLocalPosition() - t2->GetLocalPosition()).Normalized();

	float separatingVelocity = Vector3::Dot(v, n);

	if (separatingVelocity > 0)
		return;

	float newSeparatingVelocity = -separatingVelocity * 1.0f; // Hardcoded restitution

	float delta = newSeparatingVelocity - separatingVelocity;

	r1->AddForce(delta * n);
	r2->AddForce(delta * -n);
	
}

void ResolveCollision(Rigidbody* r, Collider* c)
{
	Transform* t1 = r->GetGameObject()->GetTransform();
	Transform* t2 = c->GetGameObject()->GetTransform();

	Vector3 n = (t1->GetLocalPosition() - t2->GetLocalPosition()).Normalized();

	n.y = 0.0f;

	float separatingVelocity = Vector3::Dot(r->GetLinearVelocity(), n);

	if (separatingVelocity > 0)
		return;

	float newSeparatingVelocity = -separatingVelocity * r->GetRestitution();
	float delta = newSeparatingVelocity - separatingVelocity;

	r->AddForce(delta * n);
}

NS_END