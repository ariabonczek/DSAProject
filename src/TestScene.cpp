#include "TestScene.hpp"
#include "Utility\Timer.hpp"
#include "Utility\FileSystem.hpp"

TestScene::TestScene()
{}

TestScene::~TestScene()
{}

void TestScene::LoadAssets()
{
	camera = new Camera();

	camera->Initialize();

	// Making some meshes
	meshes.push_back(new Mesh(FileSystem::LoadMesh("Meshes/car.fbx")));

	// Making some textures
	textures.push_back(new Texture2D(FileSystem::LoadImageFile("Textures/MaidOfTime.png")));
	textures.push_back(new Texture2D(FileSystem::LoadImageFile("Textures/brick_diff.jpg")));

	// Making some materials
	mats.push_back(new Material());
	mats[0]->LoadShader("Shaders/default.vert", ShaderType::Vertex);
	mats[0]->LoadShader("Shaders/directionalLight.frag", ShaderType::Fragment);

	mats.push_back(new Material());
	mats[1]->LoadShader("Shaders/textured.vert", ShaderType::Vertex);
	mats[1]->LoadShader("Shaders/textured.frag", ShaderType::Fragment);
	mats[1]->SetTexture2D("diffuse", textures[1]);
	
	GameObject* car = new GameObject("Car");
	car->SetMaterial(mats[0]);
	car->SetMesh(meshes[0]);

	objects.push_back(car);

	// Making some lights
	Light* dLight = new Light(LightType::Directional, Color::White, 2.0f);
	dLight->lightData.direction = Vector3(0.0f, -1.0f, 0.0f);
	dLight->lightData.range = 25.0f;
	dLight->lightData.position = Vector3(0.0f, 10.0f, 0.0f);
	dLight->lightData.spot = 5.0f;
	lights.push_back(dLight);

	// Setting the camera position
	camera->SetPosition(Vector3(0.0f, 0.0f, -10.0f));
}

void TestScene::Update(float dt)
{
	MoveCamera(dt);
	
	// Press space to swap between wireframe and shaded mode
	if (Input::GetKeyDown(GLFW_KEY_SPACE))
	{
		polygonFlag ? glPolygonMode(GL_FRONT_AND_BACK, GL_LINE) : glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
		polygonFlag = !polygonFlag;
	}
}

void TestScene::Draw()
{
	for (GameObject* o : objects)
	{
		// TODO: This is slow, update view/projection information once per frame
		o->GetMaterial()->SetFloat4x4("view", camera->GetView());
		o->GetMaterial()->SetFloat4x4("projection", camera->GetProjection());
		o->GetMaterial()->SetColor("lightColor", lights[0]->lightData.color);
		o->GetMaterial()->SetFloat("lightIntensity", lights[0]->lightData.intensity);
		//o->GetMaterial()->SetFloat("lightRange", lights[0]->lightData.range);
		//o->GetMaterial()->SetFloat3("lightPosition", lights[0]->lightData.position);
		//o->GetMaterial()->SetFloat("lightSpot", lights[0]->lightData.spot);
		o->GetMaterial()->SetFloat3("lightDirection", lights[0]->lightData.direction);

		o->Draw();
	}
}

void TestScene::UnloadAssets()
{
	// Deleting memory

	for (Mesh* m : meshes)
		delete m;
	for (Texture2D* t : textures)
		delete t;
	for (Material* m : mats)
		delete m;
	for (GameObject* g : objects)
		delete g;
	for (Light* l : lights)
		delete l;
}

void TestScene::MoveCamera(float dt)
{
	pMousePosition = mousePosition;
	mousePosition = Input::GetMousePosition();

	float speed = 10.0f * dt;
	if (Input::GetKey(GLFW_KEY_W))
	{
		camera->MoveForward(speed);
	}
	else if (Input::GetKey(GLFW_KEY_S))
	{
		camera->MoveForward(-speed);
	}

	if (Input::GetKey(GLFW_KEY_A))
	{
		camera->MoveRight(-speed);
	}
	else if (Input::GetKey(GLFW_KEY_D))
	{
		camera->MoveRight(speed);
	}

	speed *= 10.0f;

	if (Input::GetKey(GLFW_KEY_UP))
	{
		camera->Pitch(-speed);
	}
	else if (Input::GetKey(GLFW_KEY_DOWN))
	{
		camera->Pitch(speed);
	}

	if (Input::GetKey(GLFW_KEY_LEFT))
	{
		camera->RotateY(-speed);
	}
	else if (Input::GetKey(GLFW_KEY_RIGHT))
	{
		camera->RotateY(speed);
	}

	// Mouse controls
	if (Input::GetKey(GLFW_KEY_LEFT_ALT))
	{
		Vector2 diff = mousePosition - pMousePosition;

		camera->RotateY(diff.x);
		camera->Pitch(diff.y);
	}
}