#pragma once

#include "../Config.hpp"

NS_BEGIN

class Collider;
class Shape;
class Transform;
class Rigidbody;

struct CoarseContainer
{
	Collider* collider1;
	Collider* collider2;
};

struct ContactContainer
{
	Vector3 contactPoint;
	Vector3 contactNormal;
	float penetrationDepth;
	Vector3 objectOrigin[2];
	Rigidbody* rigidbody[2];
};

NS_END