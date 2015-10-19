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
	meshes.push_back(new Mesh(MeshBuilder::CreateCone(1.0f, 2.0f, 20, 5, Color::Red)));
	meshes.push_back(new Mesh(MeshBuilder::CreateCylinder(2.0f, 4.0f, 20, 5, Color::Green)));
	meshes.push_back(new Mesh(MeshBuilder::CreateCube(2.0f, Color::Blue)));
	meshes.push_back(new Mesh(MeshBuilder::CreateSphere(1.5f, 4, Color::RebeccaPurple)));
	meshes.push_back(new Mesh(MeshBuilder::CreateTorus(1.2f, 0.6f, 20, Color::PapayaWhip)));
	meshes.push_back(new Mesh(MeshBuilder::CreatePlane(20.0f, 20.0f, 20, 20, Color::White)));

	// Making some textures
	textures.push_back(new Texture2D(FileSystem::LoadImageFile("Textures/MaidOfTime.png")));
	textures.push_back(new Texture2D(FileSystem::LoadImageFile("Textures/brick_diff.jpg")));

	// Making some materials
	mats.push_back(new Material());
	mats[0]->LoadShader("Shaders/default.vert", ShaderType::Vertex);
	mats[0]->LoadShader("Shaders/default.frag", ShaderType::Fragment);

	mats.push_back(new Material());
	mats[1]->LoadShader("Shaders/textured.vert", ShaderType::Vertex);
	mats[1]->LoadShader("Shaders/textured.frag", ShaderType::Fragment);
	mats[1]->SetTexture2D("diffuse", textures[1]);

	// Making some GameObjects
	GameObject* cone = new GameObject("Cone");
	cone->SetMesh(meshes[0]);
	cone->SetMaterial(mats[0]);
	cone->GetTransform()->SetLocalPosition(Vector3(5.0f, 0.0f, -10.0f));

	GameObject* cylinder = new GameObject("Cylinder");
	cylinder->SetMaterial(mats[0]);
	cylinder->SetMesh(meshes[1]);
	cylinder->GetTransform()->SetLocalPosition(Vector3(-5.0f, 1.0f, 3.0f));

	GameObject* cube = new GameObject("Cube");
	cube->SetMaterial(mats[1]);
	cube->SetMesh(meshes[2]);
	cube->GetTransform()->SetLocalPosition(Vector3(10.0f, 0.0f, 0.0f));

	GameObject* sphere = new GameObject("Sphere");
	sphere->SetMaterial(mats[0]);
	sphere->SetMesh(meshes[3]);
	sphere->GetTransform()->SetLocalPosition(Vector3(0.0f, -5.0f, 0.0f));

	GameObject* torus = new GameObject("Torus");
	torus->SetMaterial(mats[0]);
	torus->SetMesh(meshes[4]);
	torus->GetTransform()->SetLocalPosition(Vector3(0.0f, 3.0f, 20.0f));

	GameObject* plane = new GameObject("Plane");
	plane->SetMaterial(mats[0]);
	plane->SetMesh(meshes[5]);
	plane->GetTransform()->SetLocalPosition(Vector3(0.0f, -10.0f, 0.0f));

	objects.push_back(cone);
	objects.push_back(cylinder);
	objects.push_back(cube);
	objects.push_back(sphere);
	objects.push_back(torus);
	objects.push_back(plane);

	// Making some lights
	Light* dLight = new Light(LightType::Spot, Color::White, 1.0f);
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