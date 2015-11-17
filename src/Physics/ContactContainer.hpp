#pragma once

#include "../Config.hpp"

NS_BEGIN

class Collider;

struct ContactContainer
{
	Collider* collider1;
	Collider* collider2;
};

NS_END