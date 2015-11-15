#ifndef _COLLECTIBLE_H_
#define _COLLECTIBLE_H_

#include "Graphics/Transform.hpp"
#include "Graphics/GameObject.hpp"
#include "Graphics/LuminaBehaviour.hpp"
#include "Car.h"

NS_BEGIN

class Collectible : public LuminaBehaviour
{
public:
	Collectible();
	Collectible(const Collectible& object);
	~Collectible();

	Collectible& operator=(const Collectible& object);

	void OnCollisionEnter();

	void Effect(Car* car);

private:

};

NS_END

#endif