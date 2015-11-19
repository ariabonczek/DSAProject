#include "TestScene.hpp"
#include "Utility\Timer.hpp"
#include "Utility\FileSystem.hpp"
#include "Graphics\TextRenderer.hpp"

TestScene::TestScene()
{}

TestScene::~TestScene()
{}

void TestScene::LoadAssets()
{
	g_TextRenderer.Initialize();
	g_TextRenderer.SetFont("Fonts/arial.ttf");
	g_TextRenderer.SetFontSize(32);
	
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

	playerCar = new GameObject("Car", meshes[0], mats[0]);
	playerCar->AddComponent<Car>(new Car());

	Collider* c = new Collider();
	Box* box = new Box();
	box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	c->AddBox(box);

	playerCar->AddComponent<Collider>(c);
	playerCar->AddComponent<Rigidbody>(new Rigidbody());
	playerCar->GetTransform()->SetLocalScale(Vector3(0.3f, 0.3f, 0.3f));
	playerCar->GetTransform()->SetLocalPosition(0.0f, 1.0f, 0.0f);

	//objects.push_back(playerCar);
	
	Collider* d = new Collider();
	Box* d_box = new Box();
	box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	d->AddBox(box);

	//objects.push_back(playerCar);
	manager->AddToList(playerCar);

	//Collectible
	testCollectible = new GameObject("Gem", meshes[2], mats[0]);
	testCollectible->AddComponent<Collectible>(new Collectible(1.01f, 1.002f));
	
	testCollectible->AddComponent<Collider>(d);
	testCollectible->GetTransform()->SetLocalScale(Vector3(0.4f));
	testCollectible->GetTransform()->SetLocalPosition(5.0f, 2.0f, 5.0f);
	//objects.push_back(testCollectible);
	manager->AddToList(testCollectible);

	for (uint i = 0; i < NUM_CARS; ++i)
	{
		GameObject* car = new GameObject("AICar", meshes[0], mats[0]);
		car->AddComponent<Car>(new Car());

		Collider* c = new Collider();
		Box* box = new Box();
		box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
		c->AddBox(box);

		car->AddComponent<Collider>(c);
		car->AddComponent<Rigidbody>(new Rigidbody());
		car->GetTransform()->SetLocalScale(Vector3(0.3f, 0.3f, 0.3f));
		car->GetTransform()->SetLocalPosition(5.0f, 1.0f, 0.0f);
		//objects.push_back(car);
		manager->AddCar(car);
	}

	GameObject* wall1;
	GameObject* wall2;
	GameObject* wall3;
	GameObject* wall4;
	GameObject* floor;

	{
		wall1 = new GameObject("Wall1", meshes[1], mats[0]);
		wall1->GetTransform()->SetLocalScale(ARENA_SIZE, 2.0f, 1.0f);
		wall1->GetTransform()->SetLocalPosition(0.0f, 0.0f, -ARENA_SIZE);

		Collider* c = new Collider();
		Box* box = new Box();
		box->m_HalfWidth = Vector3(ARENA_SIZE, 2.0f, 1.0f);
		c->AddBox(box);

		wall1->AddComponent<Collider>(c);
	}

	{
		wall2 = new GameObject("Wall2", meshes[1], mats[0]);
		wall2->GetTransform()->SetLocalScale(ARENA_SIZE, 2.0f, 1.0f);
		wall2->GetTransform()->SetLocalPosition(0.0f, 0.0f, ARENA_SIZE);

		Collider* c = new Collider();
		Box* box = new Box();
		box->m_HalfWidth = Vector3(ARENA_SIZE, 2.0f, 1.0f);
		c->AddBox(box);

		wall2->AddComponent<Collider>(c);
	}

	{
		wall3 = new GameObject("Wall3", meshes[1], mats[0]);
		wall3->GetTransform()->SetLocalScale(1.0f, 2.0f, ARENA_SIZE);
		wall3->GetTransform()->SetLocalPosition(-ARENA_SIZE, 0.0f, 0.0f);

		Collider* c = new Collider();
		Box* box = new Box();
		box->m_HalfWidth = Vector3(1.0f, 2.0f, ARENA_SIZE);
		c->AddBox(box);

		wall3->AddComponent<Collider>(c);
	}

	{
		wall4 = new GameObject("Wall4", meshes[1], mats[0]);
		wall4->GetTransform()->SetLocalScale(1.0f, 2.0f, ARENA_SIZE);
		wall4->GetTransform()->SetLocalPosition(ARENA_SIZE, 0.0f, 0.0f);

		Collider* c = new Collider();
		Box* box = new Box();
		box->m_HalfWidth = Vector3(1.0f, 2.0f, ARENA_SIZE);
		c->AddBox(box);

		wall4->AddComponent<Collider>(c);
	}

	{
		floor = new GameObject("Floor", meshes[1], mats[0]);
		floor->GetTransform()->SetLocalScale(ARENA_SIZE, 1.0f, ARENA_SIZE);
		floor->GetTransform()->SetLocalPosition(0.0f, -1.0f, 0.0f);

		//Collider* c = new Collider();
		//Box* box = new Box();
		//box->m_HalfWidth = Vector3(ARENA_SIZE, 1.0f, ARENA_SIZE);
		//c->AddBox(box);
		//
		//floor->AddComponent<Collider>(c);
	}
	/*
	objects.push_back(wall1);
	objects.push_back(wall2);
	objects.push_back(wall3);
	objects.push_back(wall4);
	objects.push_back(floor);*/

	manager->AddToList(wall1);
	manager->AddToList(wall2);
	manager->AddToList(wall3);
	manager->AddToList(wall4);
	manager->AddToList(floor);

	// Making some lights
	Light* dLight = new Light(LightType::Directional, Color::White, 2.0f);
	dLight->lightData.direction = Vector3(0.0f, -1.0f, 0.0f);
	dLight->lightData.range = 25.0f;
	dLight->lightData.position = Vector3(0.0f, 10.0f, 0.0f);
	dLight->lightData.spot = 5.0f;
	lights.push_back(dLight);

	// Setting the camera position
	camera->SetPosition(Vector3(0.0f, 0.0f, -10.0f));
	/*
	for (uint i = 0; i < objects.size(); ++i)
	{
		objects[i]->Initialize();
	}

	m_PhysicsContext.Initialize(objects);*/

	for (uint i = 0; i < manager->GetSize(); i++)
	{
		manager->GetFromList(i)->Initialize();
	}

	m_PhysicsContext.Initialize(manager->GetList());
}

void TestScene::Update(float dt)
{
	m_PhysicsContext.Simulate(dt);

	

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
		freeCamera = !freeCamera;
	}

	playerCar->Update(dt);

	/*
	for (GameObject* o : objects)
	{
		o->Update(dt);
	}*/

	manager->Update(dt);
}

void TestScene::Draw()
{
	mats[0]->SetFloat4x4("view", camera->GetView());
	mats[0]->SetFloat4x4("projection", camera->GetProjection());
	mats[0]->SetColor("lightColor", lights[0]->lightData.color);
	mats[0]->SetFloat("lightIntensity", lights[0]->lightData.intensity);
	mats[0]->SetFloat3("lightDirection", lights[0]->lightData.direction);
	/*
	for (GameObject* o : objects)
	{
		o->Draw();
	}*/

	manager->Draw();
}

void TestScene::UnloadAssets()
{
	for (Mesh* m : meshes)
		delete m;
	for (Texture2D* t : textures)
		delete t;
	for (Material* m : mats)
		delete m;
	/*
	for (GameObject* g : objects)
		delete g;*/
	
	manager->ReleaseInstance();
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

	Car* car = playerCar->GetComponent<Car>();

	if (Input::GetKey(GLFW_KEY_W))
	{
		car->Accelerate(playerCar->GetTransform()->GetForward() * dt);
	}
	
	if (Input::GetKey(GLFW_KEY_S))
	{
		car->Accelerate(playerCar->GetTransform()->GetForward() * -dt);
	}

	if (Input::GetKey(GLFW_KEY_A))
	{
		car->Turn(Quaternion::CreateFromAxisAngle(Vector3::Up, -dt * 40.0f));
		//playerCar->ApplyForce(playerCar->GetTransform()->GetRight() * -dt);
	}

	if (Input::GetKey(GLFW_KEY_D))
	{
		car->Turn(Quaternion::CreateFromAxisAngle(Vector3::Up, dt * 40.0f));
		//playerCar->ApplyForce(playerCar->GetTransform()->GetRight() * dt);
	}
}