#pragma once

#include "../Config.hpp"

NS_BEGIN

class GameObject;

class Grid
{
public:
	Grid(uint numCellsX, uint numCellsY, Vector2 cellWidth, Vector2 origin = Vector2::Zero);
	~Grid();



private:
	uint numCellsX;
	uint numCellsZ;

	Vector2 origin;
	Vector2 inverseCellWidth;

	std::vector<GameObject>* objectSets;
};

NS_END