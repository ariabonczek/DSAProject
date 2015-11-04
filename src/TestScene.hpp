#ifndef TESTSCENE_HPP
#define TESTSCENE_HPP

#include "LuminaGL.hpp"

#include "Car.h"

using namespace LuminaGL;

class TestScene : public Scene
{
public:
	TestScene();
	~TestScene();

	void LoadAssets();
	void Update(float dt);
	void Draw();
	void UnloadAssets();
private:
	void MoveCamera(float dt);
	void MovePlayer(float dt);
	void CameraSmoothFollow(float dt, Transform* target);

	void CopyLightData();

	Camera* camera;

	bool polygonFlag;
	bool freeCamera;

	Car* playerCar;
	const uint NUM_CARS = 1;
	const float ARENA_SIZE = 25.0f;

	std::vector<GameObject*> objects;
	std::vector<Mesh*> meshes;
	std::vector<Material*> mats;
	std::vector<Texture2D*> textures;
	std::vector<Light*> lights;

	Vector2 mousePosition;
	Vector2 pMousePosition;
};


#endif
