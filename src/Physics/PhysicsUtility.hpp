#pragma once

#include "../Config.hpp"


NS_BEGIN

class Collider;
class Rigidbody;
class Shape;
class Box;
class Transform;

bool SAT(Collider* c1, Collider* c2);

bool SATBox_Box(Box* a, Box* b, Transform* t1, Transform* t2);
bool CheckAxis(Vector3 L, Vector3 T, Box* a, Box* b,
	Vector3 ax, Vector3 ay, Vector3 az, Vector3 bx, Vector3 by, Vector3 bz);

NS_END