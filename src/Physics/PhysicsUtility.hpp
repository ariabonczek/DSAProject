#pragma once

#include "../Config.hpp"

NS_BEGIN

static const float EPSILON = FLT_EPSILON;

class Collider;
class Rigidbody;
class Shape;
class Box;
class Sphere;
class Transform;
struct ContactContainer;
struct CoarseContainer;

struct Edge
{
	Vector3 a;
	Vector3 b;

	Edge(Vector3 a, Vector3 b):a(a), b(b){}
};

/////////////////////
// Math Operations //
/////////////////////

template<typename T>
T Clamp(T n, T min, T max)
{
	return std::min(std::max(n, min), max);
}

/////////////////////
// Inertia Tensors //
/////////////////////
Matrix CreateBoxInertia(Box* box, float mass);
Matrix CreateSphereInertia(Sphere* sphere, float mass);

/////////////////////////
// Collision Detection //
/////////////////////////
bool SAT(Collider* c1, Collider* c2);
bool SATBox_Box(Box* a, Box* b, Transform* t1, Transform* t2);
bool SATBox_Sphere(Box* b, Sphere* s, Transform* t1, Transform* t2);
bool CheckAxis(Vector3 L, Vector3 T, Box* a, Box* b,
	Vector3 ax, Vector3 ay, Vector3 az, Vector3 bx, Vector3 by, Vector3 bz);

//////////////////////////////
// Fine Collision Detection //
//////////////////////////////

uint ContactGeneration(Collider* c1, Collider* c2, ContactContainer& cc);
uint BoxBoxContact(Box* b1, Box* b2, Transform* t1, Transform* t2, ContactContainer& cc);
bool BoxVertexContact(Box* b, Transform* t, Vector3 v, ContactContainer& cc);
bool EdgeEdgeContact(Edge e1, Edge e2, ContactContainer& cc);
uint BoxSphereContact(Box* b, Sphere* s, Transform* t1, Transform* t2, ContactContainer& cc);

////////////////////
// Closest Points //
////////////////////
float EdgeEdgeClosestPoints(Vector3 a1, Vector3 a2, Vector3 b1, Vector3 b2, Vector3& p1, Vector3& p2);

//////////////////////////
// Collision Resolution //
//////////////////////////
float CalculateSeparatingVelocity(Rigidbody* r1, Rigidbody* r2);
/// <summary>
/// Assumes X is the contact normal and outputs y and z
/// </summary>
void CreateBasisAxes(Vector3 x, Vector3& y, Vector3& z);
void ResolveCollision(ContactContainer cc);
void ResolveCollisionSimple(ContactContainer cc);
void ResolveCollision(Rigidbody* r1, Rigidbody* r2);
void ResolveCollision(Rigidbody* r, Collider* c);

NS_END