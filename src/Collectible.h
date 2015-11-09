#ifndef _COLLECTIBLE_H_
#define _COLLECTIBLE_H_

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Physics\BoxCollider.hpp"

NS_BEGIN
class Collectible : public GameObject{
public:
	Collectible();
	Collectible(const Collectible& collectible);
	Collectible operator=(Collectible const& collectible);

	Effect();
	~Collectible();

private:
	BoxCollider* boxCollider;


};
#endif