#include "Collider.hpp"

NS_BEGIN

void Collider::AddShape(Shape* shape)
{
	shapes.push_back(shape);
}

NS_END