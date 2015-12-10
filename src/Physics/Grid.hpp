#pragma once

#include "../Config.hpp"

NS_BEGIN

class GameObject;
struct PhysicsObject;

static const float inverseCellWidth = 0.04f;

struct GridNode
{
	void Add(PhysicsObject* object);
	void Clear();
	std::vector<PhysicsObject*>& GetList();

	std::vector<PhysicsObject*> colliders;
};

class Grid
{
public:
	Grid();
	~Grid();

	void FillGrid(std::vector<PhysicsObject>& objects);
	std::vector<PhysicsObject*> GetAllAdjacentObjects(uint x, uint z);
private:
	static const uint numCellsX = 4;
	static const uint numCellsZ = 4;

	GridNode grid[numCellsX][numCellsZ];
};

NS_END