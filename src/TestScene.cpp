#include "TestScene.hpp"
#include "Utility\Timer.hpp"
#include "Utility\FileSystem.hpp"
#include "Physics\BoxCollider.hpp"
#include "Physics\PhysicsManager.hpp"

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
	meshes.push_back(new Mesh(MeshBuilder::CreateCube(1.0f, Color(0.2f, 0.2f, 0.2f, 1.0f))));
	meshes.push_back(new Mesh(FileSystem::LoadMesh("Meshes/gem.fbx")));

	// Making some textures
	textures.push_back(new Texture2D(FileSystem::LoadImageFile("Textures/MaidOfTime.png")));
	textures.push_back(new Texture2D(FileSystem::LoadImageFile("Textures/brick_diff.jpg")));

	// Making some materials
	mats.push_back(new Material());
	mats[0]->LoadShader("Shaders/default.vert", ShaderType::Vertex);
	mats[0]->LoadShader("Shaders/directionalLight.frag", ShaderType::Fragment);

	mats.push_back(new Material());
	mats[1]->LoadShader("Shaders/default.vert", ShaderType::Vertex);
	mats[1]->LoadShader("Shaders/boundingBox.frag", ShaderType::Fragment);
	
	playerCar = new Car("Car", meshes[0], mats[0]);

	playerCar->GetTransform()->SetLocalScale(Vector3(0.3f, 0.3f, 0.3f));
	playerCar->GetTransform()->SetLocalPosition(0.0f, 2.0f, 0.0f);
	


	//Collectible
	testCollectible = new Collectible("Gem", meshes[2], mats[0]);
	testCollectible->GetTransform()->SetLocalScale(Vector3(0.4f));
	testCollectible->GetTransform()->SetLocalPosition(5.0f, 2.0f, 5.0f);



	for (uint i = 0; i < NUM_CARS; ++i)
	{
		Car* car = new Car("AICar", meshes[0], mats[0]);
		car->GetTransform()->SetLocalScale(Vector3(0.3f, 0.3f, 0.3f));
		car->GetTransform()->SetLocalPosition(5.0f, 2.0f, 0.0f);
		objects.push_back(car);
	}

	GameObject* wall1;
	GameObject* wall2;
	GameObject* wall3;
	GameObject* wall4;
	GameObject* floor;

	wall1 = new GameObject("Wall1", meshes[1], mats[0]);
	wall1->GetTransform()->SetLocalScale(ARENA_SIZE, 2.0f, 1.0f);
	wall1->GetTransform()->SetLocalPosition(0.0f, 0.0f, -ARENA_SIZE);

	wall2 = new GameObject("Wall2", meshes[1], mats[0]);
	wall2->GetTransform()->SetLocalScale(ARENA_SIZE, 2.0f, 1.0f);
	wall2->GetTransform()->SetLocalPosition(0.0f, 0.0f, ARENA_SIZE);

	wall3 = new GameObject("Wall3", meshes[1], mats[0]);
	wall3->GetTransform()->SetLocalScale(1.0f, 2.0f, ARENA_SIZE);
	wall3->GetTransform()->SetLocalPosition(-ARENA_SIZE, 0.0f, 0.0f);

	wall4 = new GameObject("Wall4", meshes[1], mats[0]);
	wall4->GetTransform()->SetLocalScale(1.0f, 2.0f, ARENA_SIZE);
	wall4->GetTransform()->SetLocalPosition(ARENA_SIZE, 0.0f, 0.0f);

	floor = new GameObject("Floor", meshes[1], mats[0]);
	floor->GetTransform()->SetLocalScale(ARENA_SIZE, 1.0f, ARENA_SIZE);
	floor->GetTransform()->SetLocalPosition(0.0f, -1.0f, 0.0f);

	objects.push_back(wall1);
	objects.push_back(wall2);
	objects.push_back(wall3);
	objects.push_back(wall4);
	objects.push_back(floor);

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
	MovePlayer(dt);

	if (freeCamera)
	{
		MoveCamera(dt);
	}
	else
	{
		CameraSmoothFollow(dt, playerCar->GetTransform());
	}

	// Press space to swap between wireframe and shaded mode
	if (Input::GetKeyDown(GLFW_KEY_SPACE))
	{
		//polygonFlag ? glPolygonMode(GL_FRONT_AND_BACK, GL_LINE) : glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
		//polygonFlag = !polygonFlag;

		freeCamera = !freeCamera;
	}

	g_PhysicsManager.Simulate(dt);

	playerCar->Update(dt);
	for (GameObject* o : objects)
	{
		o->Update(dt);
	}
}

void TestScene::Draw()
{
	mats[0]->SetFloat4x4("view", camera->GetView());
	mats[0]->SetFloat4x4("projection", camera->GetProjection());
	mats[0]->SetColor("lightColor", lights[0]->lightData.color);
	mats[0]->SetFloat("lightIntensity", lights[0]->lightData.intensity);
	mats[0]->SetFloat3("lightDirection", lights[0]->lightData.direction);
	playerCar->Draw();
	//testCollectible->Draw();
	for (GameObject* o : objects)
	{
		o->Draw();
	}

	
	//g_PhysicsManager.RenderAll(camera->GetView(), camera->GetProjection());
}

void TestScene::UnloadAssets()
{
	// Deleting memory
	delete playerCar;
	//delete testCollectible;
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

	if (Input::GetKey(GLFW_KEY_Q))
	{
		camera->Move(Vector3::Up * speed);
	}
	else if (Input::GetKey(GLFW_KEY_E))
	{
		camera->Move(Vector3::Up * -speed);
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

void TestScene::CameraSmoothFollow(float dt, Transform* target)
{
	Vector3 position;
	position = target->GetWorldPosition() - target->GetForward() * 10.0f;
	position.y = target->GetWorldPosition().y + 4.0f;
	camera->SetPosition(position);
	camera->LookAt(target->GetWorldPosition());
	camera->UpdateViewMatrix();
}

void TestScene::MovePlayer(float dt)
{
	if (freeCamera)
		return;

	if (Input::GetKey(GLFW_KEY_W))
	{
		playerCar->ApplyForce(playerCar->GetTransform()->GetForward() * dt);
	}
	
	if (Input::GetKey(GLFW_KEY_S))
	{
		playerCar->ApplyForce(playerCar->GetTransform()->GetForward() * -dt);
	}

	if (Input::GetKey(GLFW_KEY_A))
	{
		playerCar->Rotate(Quaternion::CreateFromAxisAngle(Vector3::Up, -dt * 40.0f));
		//playerCar->ApplyForce(playerCar->GetTransform()->GetRight() * -dt);
	}

	if (Input::GetKey(GLFW_KEY_D))
	{
		playerCar->Rotate(Quaternion::CreateFromAxisAngle(Vector3::Up, dt * 40.0f));
		//playerCar->ApplyForce(playerCar->GetTransform()->GetRight() * dt);
	}
}