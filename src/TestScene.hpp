#ifndef TESTSCENE_HPP
#define TESTSCENE_HPP

#include "LuminaGL.hpp"

#include "Car.h"
#include "Collectible.h"
#include "GameObjectManager.h"
#include "VectorPlate.h"
#include "Goal.h"
//#include <time.h>
#include <ctime>
#include <stdio.h>

#include <vector>
using namespace LuminaGL;

class TestScene : public Scene
{
public:
	TestScene();
	~TestScene();

	void LoadAssets();
	void Update(float dt);
	void Draw();
	void MakeCollectibles();
	void MakeCars();
	void MakeArena();
	void MakeVectorPlate();
	void MakeGoals();
	void UnloadAssets();
	void DrawHUD();

	static uint minutesLeft;
	static uint secondsLeft;

private:
	void MoveCamera(float dt);
	void MovePlayer(float dt);
	void CameraSmoothFollow(float dt, Transform* target);
	void UpdateTime();
	void CopyLightData();

	PhysicsContext m_PhysicsContext;

	Camera* camera;

	bool polygonFlag;
	bool freeCamera;

	LuminaBehaviour* testBehaviour;
	GameObject* playerCar;
	GameObject* gem1;
	GameObject* gem2;
	GameObject* gem3;
	GameObject* gem4;
	GameObject* gem5;

	GameObject* vectorPlate03;

	std::vector<GameObject*> vectorPlate;
	std::vector<GameObject*> goals;

	const uint NUM_CARS = 5;
	const float ARENA_SIZE = 50.0f;

	//std::vector<GameObject*> objects

	GameObjectManager* manager = GameObjectManager::GetInstance();
	std::vector<Mesh*> meshes;
	std::vector<Material*> mats;
	std::vector<Texture2D*> textures;
	std::vector<Light*> lights;

	Vector2 mousePosition;
	Vector2 pMousePosition;
};


#endif
