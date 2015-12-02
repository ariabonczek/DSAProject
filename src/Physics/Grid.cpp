#include "Grid.hpp"

#include "../Graphics/GameObject.hpp"

NS_BEGIN

Grid::Grid(uint numCellsX, uint numCellsZ, Vector2 cellWidth, Vector2 origin):
	numCellsX(numCellsX),
	numCellsZ(numCellsZ),
	origin(origin)

{
	objectSets = new std::vector<GameObject>[numCellsX * numCellsZ];

}

Grid::~Grid()
{}

NS_END