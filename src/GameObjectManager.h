#pragma once
#ifndef GAMEOBJECTMANAGER_H
#define GAMEOBJECTMANAGER_H

#include "Graphics/LuminaBehaviour.hpp"
#include "Graphics/GameObject.hpp"
#include "Car.h"
#include "Collectible.h"

NS_BEGIN
class GameObjectManager :public LuminaBehaviour
{
	uint size = 0;
	static GameObjectManager* instance;
	std::vector<GameObject* > gameObjectList;

	std::vector<Car*> carList;
	std::vector<Collectible*> collectibleList;

public:
	static GameObjectManager* GetInstance();

	static void ReleaseInstance(void);

	int GetSize();

	void AddToList(GameObject* object);
	void AddCar(Car* object);
	void AddCollectible(Collectible object);

	GameObject* GetFromList(int index);
	GameObject* GetFromList(std::string name);

	int GetIndex(std::string name);

	void Update(void);
	
	void Draw();

	void SetMesh(int index, Mesh* mesh);
	void SetMaterial(int index, Material* mat);


private:
	GameObjectManager(void);
	
	GameObjectManager(GameObjectManager const& other);
	
	GameObjectManager& operator=(GameObjectManager const& other);

	~GameObjectManager(void);

	void Release(void);

	void Init(void);

};

#endif //_MYGAMEOBJECTMANAGER_H_