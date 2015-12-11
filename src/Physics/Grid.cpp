#include "Grid.hpp"

#include "../Graphics/GameObject.hpp"
#include "PhysicsContext.hpp"

NS_BEGIN

void GridNode::Add(PhysicsObject* object)
{
	colliders.push_back(object);
}

void GridNode::Clear()
{
	colliders.clear();
}

std::vector<PhysicsObject*>& GridNode::GetList()
{	
	return colliders;
}

Grid::Grid()
{}

Grid::~Grid()
{}

void Grid::FillGrid(std::vector<PhysicsObject>& objects)
{
	// Clear the grid
	for (uint i = 0; i < numCellsX; ++i)
	{
		for (uint j = 0; j < numCellsZ; ++j)
		{
			grid[i][j].Clear();
		}
	}

	// Fill the grid
	uint n = objects.size();
	for (uint i = 0; i < n; ++i)
	{
		Transform* t = objects[i].collider->GetGameObject()->GetTransform();

		Vector3 pos = t->GetLocalPosition();

		int x = (int)(pos.x * inverseCellWidth) + 2;
		int z = (int)(pos.z * -inverseCellWidth) + 2;

		if (x > numCellsX - 1) x = numCellsX - 1;
		if (x < 0) x = 0;

		if (z > numCellsZ - 1) z = numCellsZ - 1;
		if (z < 0) z = 0;

		grid[x][z].Add(&objects[i]);
	}
}

std::vector<PhysicsObject*> Grid::GetAllAdjacentObjects(int x, int z)
{
	std::vector<PhysicsObject*> ret;

	ret.insert(ret.end(), grid[x][z].colliders.begin(), grid[x][z].colliders.end());
	if (x + 1 < numCellsX)
	{
		std::vector<PhysicsObject*> temp = grid[x + 1][z].GetList();
		ret.insert(ret.end(), temp.begin(), temp.end());
	}
	if (x - 1 > 0)
	{
		std::vector<PhysicsObject*> temp = grid[x - 1][z].GetList();
		ret.insert(ret.end(), temp.begin(), temp.end());
	}
	if (z + 1 < numCellsZ)
	{
		std::vector<PhysicsObject*> temp = grid[x][z + 1].GetList();
		ret.insert(ret.end(), temp.begin(), temp.end());
	}
	if (z - 1 > 0)
	{
		std::vector<PhysicsObject*> temp = grid[x][z - 1].GetList();
		ret.insert(ret.end(), temp.begin(), temp.end());
	}
	
	if (ret.size() > 1)
	{
		for (int i = 0; i < ret.size() - 1; ++i)
		{
			PhysicsObject* p = ret[i];
			for (int j = i; j < ret.size(); ++j)
			{
				if (p == ret[j])
					ret.erase(ret.begin() + j);
			}
		}
	}

	return ret;
}

NS_END