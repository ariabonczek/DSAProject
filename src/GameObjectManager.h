#pragma once
#ifndef GAMEOBJECTMANAGER_H
#define GAMEOBJECTMANAGER_H

#include "Graphics/LuminaBehaviour.hpp"
#include "Graphics/GameObject.hpp"
#include "Car.h"
#include "Collectible.h"
#include <unordered_map>
#include "Graphics\Material.hpp"
#include "Graphics\Mesh.hpp"
#include <vector>

class Goal;

NS_BEGIN
class GameObjectManager 
{
	static GameObjectManager* instance;
	std::vector<GameObject*> gameObjectList;
	
	std::unordered_map<uint, GameObject*> objects;

	//std::vector<GameObject*> carList;
	//std::vector<GameObject*> collectibleList;

	uint nextID;

public:
	static GameObjectManager* GetInstance();
	static void ReleaseInstance(void);
	void Release(void);

	int GetSize();
	void InitializeObjects();
	GameObject* GetCarComponent();

	void RemoveFromList(uint id);
	void FindCollided(GameObject* hit);
	void SetPoints(GameObject* car);
	void AddObject(uint id, GameObject* object);
	GameObject* GetObject(uint id);

	uint GetID();
	uint GetNextID();

	void Update(float dt);
	
	void Draw();

	void SetMesh(int id, Mesh* mesh);
	void SetMaterial(int index, Material* mat);
	
	float calcDistance(GameObject* a, GameObject* b);
	
	std::unordered_map<uint, GameObject*> GetList();

	void SortCarsIntoTeams();
	std::vector<GameObject*> GetPlayerTeamList();
	std::vector<GameObject*> GetEnemyTeamList();

	void SortGoals();
	std::vector<GameObject*> GetGoalObjects();

	uint GetPlayerScore();
	uint GetEnemyScore();

private:
	int size = 0;
	uint playerScore = 0;
	uint enemyScore = 0;
	GameObjectManager(void);
	
	GameObjectManager(GameObjectManager const& other);
	
	GameObjectManager& operator=(GameObjectManager const& other);

	~GameObjectManager(void);

	

	void Init(void);

	std::vector<GameObject*> playerTeamList;
	std::vector<GameObject*> enemyTeamList;

	std::vector<GameObject*> goalList;
};

#endif //_MYGAMEOBJECTMANAGER_H_

NS_END