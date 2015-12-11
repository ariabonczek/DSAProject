#include "TestScene.hpp"
#include "Utility\Timer.hpp"
#include "Utility\FileSystem.hpp"
#include "Graphics\TextRenderer.hpp"
#include <unordered_map>
#include <string>
#include "Game/CarAI.hpp"

TestScene::TestScene()
{
	//goes by seconds for how long round is
	timeLimit = 50;
	//timeLimit = 10; //5 minutes
	//Timer::Start();
	vectorPlatePos =
	{
		Vector3(25.0f, 0.0f, 25.0f),
		Vector3(0.0f, 0.0f, 40.0f),
		Vector3(-25.0f, 0.0f, 25.0f),
		Vector3(-40.0f, 0.0f, 0.0f),
		Vector3(-25.0f, 0.0f, -25.0f),
		Vector3(0.0f, 0.0f, -40.0f),
		Vector3(25.0f, 0.0f, -25.0f),
		Vector3(40.0f, 0.0f, 0.0f),

		Vector3(10.0f, 0.0f, 10.0f),
		Vector3(0.0f, 0.0f, 15.0f),
		Vector3(-10.0f, 0.0f, 10.0f),
		Vector3(-15.0f, 0.0f, 0.0f),
		Vector3(-10.0f, 0.0f, -10.0f),
		Vector3(0.0f, 0.0f, -15.0f),
		Vector3(10.0f, 0.0f, -10.0f),
		Vector3(15.0f, 0.0f, 0.0f)
	};

	vectorPlateDirection =
	{

		-45.0f,
		-90.0f,
		-135.0f,
		180.0f,
		135.0f,
		90.0f,
		45.0f,
		0.0f,

		45.0f,
		90.0f,
		135.0f,
		180.0f,
		-135.0f,
		-90.0f,
		-45.0f,
		-0.0f


	};

	goalPos =
	{
		Vector3(45.0f, 0.0f, 45.0f),
		Vector3(-45.0f, 0.0f, 45.0f),
		Vector3(-45.0f, 0.0f, -45.0f),
		Vector3(45.0f, 0.0f, -45.0f),
	
	};

}

TestScene::~TestScene()
{
	
}

void TestScene::ResetGame(){
	//only reset cars and collectibles
	MakeCars();
	MakeCollectibles(NUM_COLLECTIBLE);
	MakeArena();
	MakeVectorPlate(vectorPlatePos, vectorPlateDirection, VECTORPLATE_SCALE);

	MakeGoals(goalPos);
	manager->InitializeObjects();
	
	gameOver = false;
	Timer::Initialize();
	g_PhysicsContext.Initialize(manager->GetList());
	Update(Timer::GetFrameTime());
}

void TestScene::TotalDestruction(){
	//only destroy cars and collectibles
	//also vector plates if they are random
	manager->Release();
    g_PhysicsContext.DeleteObjects();
}

void TestScene::UpdateTime(){
	//Timer::Stop();
	timePlayed = Timer::GetTotalTime();	
	
	if (timePlayed > timeLimit){
		gameOver = true;
		//call all destruction
		TotalDestruction();
	}
	//Timer::Stop();
}

void TestScene::LoadAssets()
{
	g_TextRenderer.Initialize();
	g_TextRenderer.SetFont("Fonts/arial.ttf");
	g_TextRenderer.SetFontSize(30);
	g_TextRenderer.SetFontColor(Color::Black);
	
	camera = new Camera();

	camera->Initialize();

	// Making some meshes
	meshes.push_back(new Mesh(FileSystem::LoadMesh("Meshes/car.fbx")));
	meshes.push_back(new Mesh(MeshBuilder::CreateCube(1.0f, Color(0.2f, 0.2f, 0.2f, 1.0f))));
	meshes.push_back(new Mesh(FileSystem::LoadMesh("Meshes/gem3.fbx")));

	meshes.push_back(new Mesh(FileSystem::LoadMesh("Meshes/vectorplate.fbx")));
	meshes.push_back(new Mesh(FileSystem::LoadMesh("Meshes/goal.fbx")));

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

	
	MakeCars();
	MakeCollectibles(NUM_COLLECTIBLE);

	MakeArena();
	MakeVectorPlate(vectorPlatePos, vectorPlateDirection, VECTORPLATE_SCALE);
	MakeGoals(goalPos);

	Collider* d = new Collider();
	Box* d_box = new Box();
	d_box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	d->AddBox(d_box);

	// Making some lights
	Light* dLight = new Light(LightType::Directional, Color::White, 2.0f);
	dLight->lightData.direction = Vector3(0.0f, -1.0f, 0.0f);
	dLight->lightData.range = 25.0f;
	dLight->lightData.position = Vector3(0.0f, 10.0f, 0.0f);
	dLight->lightData.spot = 5.0f;
	lights.push_back(dLight);

	// Setting the camera position
	camera->SetPosition(Vector3(0.0f, 0.0f, -10.0f));
	camera->SetLens(0.25f * 3.1415f, WINDOW_WIDTH / WINDOW_HEIGHT, 0.1f, 200.0f);

	manager->InitializeObjects();
	m_PhysicsContext.Initialize(manager->GetList());
}

void TestScene::Update(float dt)
{
	if (!gameOver){//gameOver = false;
		UpdateTime();
		m_PhysicsContext.Simulate(dt);
		DrawHUD();

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
		manager->Update(dt);
	}
	else{
		DrawGameOver();
		if (Input::GetKeyDown(GLFW_KEY_ENTER)) {
			ResetGame();
		}
		//make method that resets everything 
		//all assets and such should be destroyed here. 
	}

}

void TestScene::DrawHUD() {
	g_TextRenderer.RenderText("Player: ", 30, 30);
	g_TextRenderer.RenderText("Mass: ", 60, 60);

	std::string m = std::to_string(playerCar->GetComponent<Rigidbody>()->GetMass());
	g_TextRenderer.RenderText(m.c_str(), 100, 60);

	g_TextRenderer.RenderText("Enemies: ", 1000, 30);
	
	std::string p = std::to_string(manager->GetPlayerScore());	
	//render how many crystals
	g_TextRenderer.RenderText(p.c_str(), 150, 30);

	std::string e = std::to_string(manager->GetEnemyScore());
	//render how many crystals
	g_TextRenderer.RenderText(e.c_str(), 1200, 30);


	std::string t = std::to_string(std::floor(timePlayed));
	g_TextRenderer.RenderText(t.c_str(), 500, 30);
}

void TestScene::DrawGameOver(){
	g_TextRenderer.RenderText("GAME OVER" , 650, 100);
	std::string p = std::to_string(manager->GetPlayerScore());
	std::string e = std::to_string(manager->GetEnemyScore());

	if (manager->GetPlayerScore() == manager->GetEnemyScore()){
		g_TextRenderer.RenderText("Tie", 600, 200);
	}
	else{
		if (manager->GetPlayerScore() > manager->GetEnemyScore()){
			g_TextRenderer.RenderText("Winner: Player's Team", 500, 200);
		}
		else{
			g_TextRenderer.RenderText("Winner: Enemy Team", 500, 200);
		}
	}
	
	g_TextRenderer.RenderText("Player Score: ", 300, 400);
	g_TextRenderer.RenderText(p.c_str(), 500, 400);

	g_TextRenderer.RenderText("Enemy Score: ", 650, 400);
	g_TextRenderer.RenderText(e.c_str(), 850, 400);

	g_TextRenderer.RenderText("Press Enter to try again", 500, 600);
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

/*Not using, keeping in case
void TestScene::MakeCollectibles() {
	///TODO - Optimize this
	Collider* d = new Collider();
	d->SetTrigger(true);
	Box* d_box = new Box();
	d_box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	d->AddBox(d_box);

	//Collectible
	gem1 = new GameObject("Gem1", meshes[2], mats[0]);
	gem1->AddComponent<Collectible>(new Collectible(2));

	gem1->AddComponent<Collider>(d);
	gem1->GetTransform()->SetLocalScale(Vector3(0.4f));
	gem1->GetTransform()->SetLocalPosition(-15.0f, 2.0f, 25.0f);
	manager->AddObject(manager->GetNextID(),gem1);

	Collider* a = new Collider();
	a->SetTrigger(true);
	Box* a_box = new Box();
	a_box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	a->AddBox(a_box);

	gem2 = new GameObject("Gem2", meshes[2], mats[0]);
	gem2->AddComponent<Collectible>(new Collectible(2));

	gem2->AddComponent<Collider>(a);
	gem2->GetTransform()->SetLocalScale(Vector3(0.4f));
	gem2->GetTransform()->SetLocalPosition(5.0f, 2.0f, 5.0f);
	manager->AddObject(manager->GetNextID(), gem2);

	Collider* b = new Collider();
	b->SetTrigger(true);
	Box* b_box = new Box();
	b_box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	b->AddBox(b_box);

	gem3 = new GameObject("Gem3", meshes[2], mats[0]);
	gem3->AddComponent<Collectible>(new Collectible(2));

	gem3->AddComponent<Collider>(b);
	gem3->GetTransform()->SetLocalScale(Vector3(0.4f));
	gem3->GetTransform()->SetLocalPosition(20.0f, 2.0f, 30.0f);
	manager->AddObject(manager->GetNextID(), gem3);

	Collider* c = new Collider();
	c->SetTrigger(true);
	Box* c_box = new Box();
	c_box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	c->AddBox(c_box);

	gem4 = new GameObject("Gem4", meshes[2], mats[0]);
	gem4->AddComponent<Collectible>(new Collectible(2));

	gem4->AddComponent<Collider>(c);
	gem4->GetTransform()->SetLocalScale(Vector3(0.4f));
	gem4->GetTransform()->SetLocalPosition(-35.0f, 2.0f, -10.0f);
	manager->AddObject(manager->GetNextID(), gem4);
	
	Collider* e = new Collider();
	e->SetTrigger(true);
	Box* e_box = new Box();
	e_box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
	e->AddBox(e_box);

	gem5 = new GameObject("Gem5", meshes[2], mats[0]);
	gem5->AddComponent<Collectible>(new Collectible(2));

	gem5->AddComponent<Collider>(e);
	gem5->GetTransform()->SetLocalScale(Vector3(0.4f));
	gem5->GetTransform()->SetLocalPosition(30.0f, 2.0f, -10.0f);
	manager->AddObject(manager->GetNextID(), gem5);
}
*/

void TestScene::MakeCollectibles(uint amount)
{
	Collider* collide;
	Box* gem_box;
	GameObject* gem;

	for (int i = 0; i < amount; i++)
	{
		collide = new Collider();
		gem_box = new Box();
		collide->SetTrigger(true);

		gem_box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
		collide->AddBox(gem_box);

		gem = new GameObject("Gem" + i, meshes[2], mats[0]);
		gem->AddComponent<Collectible>(new Collectible(2));

		gem->AddComponent<Collider>(collide);
		gem->GetTransform()->SetLocalPosition(rand() % 80 - 40.0f, 1.0f, rand() % 80 - 40.0f);
		gem->GetTransform()->SetLocalScale(Vector3(0.4f));


		manager->AddObject(manager->GetNextID(), gem);
	}
}


void TestScene::MakeCars()
{
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

	manager->AddObject(manager->GetNextID(), playerCar);

	GameObject* car;
	for (uint i = 0; i < NUM_CARS * 2; ++i)
	{
		car = new GameObject("AICar", meshes[0], mats[0]);
		car->AddComponent<Car>(new Car());
		car->AddComponent<CarAI>(new CarAI());
		
		if (i % 2 == 0)
			car->GetComponent<Car>()->SetEnemey(true);
		else
			car->GetComponent<Car>()->SetEnemey(false);

		c = new Collider();
		box = new Box();
		box->m_HalfWidth = Vector3(1.0f, 1.0f, 1.0f);
		c->AddBox(box);

		car->AddComponent<Collider>(c);
		car->AddComponent<Rigidbody>(new Rigidbody());
		
		car->GetTransform()->SetLocalPosition(rand() % 70 - 35.0f, 1.0f, rand() % 70 - 30.0f);
		car->GetTransform()->SetLocalScale(Vector3(0.3f));
		manager->AddObject(manager->GetNextID(), car);
	}
	
	manager->SortCarsIntoTeams();
}

void TestScene::MakeVectorPlate()
{
	for (int i = 0; i < 20; i++)
	{
		GameObject* tmp;
		tmp = new GameObject("VectorPlate", meshes[3], mats[0]);

		tmp->AddComponent<VectorPlate>(new VectorPlate());

		Collider* c = new Collider;
		c->SetTrigger(true);

		Box* box = new Box();
		box->m_HalfWidth = Vector3(1.0f);
		c->AddBox(box);

		tmp->AddComponent<Collider>(c);
		tmp->AddComponent<Rigidbody>(new Rigidbody());
		float r = rand() % 10 + 3;

		tmp->GetTransform()->SetLocalPosition(rand() % 100 - 50.0f, 0.0f, rand() % 100 - 50.0f);
		tmp->GetTransform()->SetLocalRotation(Quaternion::CreateFromAxisAngle(Vector3(0.0f, 1.0f, 0.0f), rand() % 360));
		tmp->GetTransform()->SetLocalScale(Vector3(r / 10));

		manager->AddObject(manager->GetNextID(), tmp);
	}

}

void TestScene::MakeVectorPlate(std::vector<Vector3> location, std::vector<float> direction, float scale)
{
	GameObject* vectorPlate;
	Collider* collider;
	Box* box;
	for (uint i = 0; i < location.size(); i++)
	{
		vectorPlate = new GameObject("VectorPlate" + i, meshes[3], mats[0]);

		vectorPlate->AddComponent<VectorPlate>(new VectorPlate());

		collider = new Collider;
		collider->SetTrigger(true);

		box = new Box();
		box->m_HalfWidth = Vector3(1.0f);
		collider->AddBox(box);

		vectorPlate->AddComponent<Collider>(collider);
		vectorPlate->AddComponent<Rigidbody>(new Rigidbody);

		vectorPlate->GetTransform()->SetLocalPosition(location[i]);

		if (direction.size() >= location.size())
		{
			vectorPlate->GetTransform()->SetLocalRotation(Quaternion::CreateFromAxisAngle(Vector3(0.0f, 1.0f, 0.0f), direction[i]));
		}
		else
			vectorPlate->GetTransform()->SetLocalRotation(Quaternion::CreateFromAxisAngle(Vector3(0.0f, 1.0f, 0.0f), rand() % 360));

		vectorPlate->GetTransform()->SetLocalScale(Vector3(scale));

		manager->AddObject(manager->GetNextID(), vectorPlate);
	}
}
void TestScene::MakeGoals()
{
	for (int i = 0; i < 5; i++)
	{
		GameObject* tmp;
		tmp = new GameObject("Goals", meshes[4], mats[0]);

		tmp->AddComponent<LuminaGL::Goal>(new LuminaGL::Goal());

		Collider* c = new Collider;
		c->SetTrigger(true);

		Sphere* sphere = new Sphere();
		sphere->m_Radius = 1.0f;
		c->AddSphere(sphere);

		tmp->AddComponent<Collider>(c);
		tmp->AddComponent<Rigidbody>(new Rigidbody());
		
		
		tmp->GetTransform()->SetLocalPosition(rand() % 100 - 50.0f, 0.0f, rand() % 100 - 50.0f);
		tmp->GetTransform()->SetLocalScale(Vector3(1.0f));
		manager->AddObject(manager->GetNextID(), tmp);

	
	}
}

void TestScene::MakeGoals(std::vector<Vector3> location)
{
	GameObject* goal;
	Collider* collider;
	Box* box;
	for (uint i = 0; i < location.size(); i++)
	{
		goal = new GameObject("Goal" + i, meshes[4], mats[0]);
		goal->AddComponent<LuminaGL::Goal>(new LuminaGL::Goal());

		collider = new Collider;
		collider->SetTrigger(true);

		box = new Box();
		box->m_HalfWidth = Vector3(2.0f);
		collider->AddBox(box);

		goal->AddComponent<Collider>(collider);
		goal->AddComponent<Rigidbody>(new Rigidbody());

		goal->GetTransform()->SetLocalPosition(location[i]);
	
		if(i == 0)
			goal->GetTransform()->SetLocalRotation(Quaternion::CreateFromAxisAngle(Vector3(0.0f, 1.0f, 0.0f), -90 - (atan(location[i].z / location[i].x) * 180) / PI));
		else if (i == 1)
			goal->GetTransform()->SetLocalRotation(Quaternion::CreateFromAxisAngle(Vector3(0.0f, 1.0f, 0.0f), 90 - (atan(location[i].z / location[i].x) * 180) / PI));
		else
			goal->GetTransform()->SetLocalRotation(Quaternion::CreateFromAxisAngle(Vector3(0.0f, 1.0f, 0.0f), (atan(location[i].z / location[i].x) * 180) / PI));
		std::cout << atan(location[i].z / location[i].x) * 180 / PI<< std::endl;
		goal->GetTransform()->SetLocalScale(Vector3(2.0f));
		manager->AddObject(manager->GetNextID(), goal);

	}
}

void TestScene::MakeArena()
{
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
	}

	manager->AddObject(manager->GetNextID(), wall1);
	manager->AddObject(manager->GetNextID(), wall2);
	manager->AddObject(manager->GetNextID(), wall3);
	manager->AddObject(manager->GetNextID(), wall4);
	manager->AddObject(manager->GetNextID(), floor);
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
	position = target->GetWorldPosition() - target->GetForward() * 20.0f;
	position.y = target->GetWorldPosition().y + 10.0f;
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
		car->TurnLeft(dt * 1.5f);
		//playerCar->ApplyForce(playerCar->GetTransform()->GetRight() * -dt);
	}

	if (Input::GetKey(GLFW_KEY_D))
	{
		car->TurnRight(dt * 1.5f);
		//playerCar->ApplyForce(playerCar->GetTransform()->GetRight() * dt);
	}
}