#ifndef _COLLECTIBLE_H_
#define _COLLECTIBLE_H_

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Physics\BoxCollider.hpp"
#include "Car.h"

NS_BEGIN
class Collectible : public GameObject{
public:
	Collectible(std::string name, Mesh* mesh, Material* material);
	Collectible(const Collectible& object);
	Collectible operator=(const Collectible& object);
	BoxCollider* GetBoxCollider();

	void Effect(Car* car);
	~Collectible();

private:
	BoxCollider* boxCollider;
	void Update();

};
NS_END
#endif