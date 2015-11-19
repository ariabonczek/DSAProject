#include "GameObjectManager.h"
#include <math.h>

NS_BEGIN
GameObjectManager* GameObjectManager::instance = nullptr;

void GameObjectManager::Init(void)
{
	size = 0;
}

void GameObjectManager::Release(void)
{
	gameObjectList.clear();
	//carList.clear();
	//collectibleList.clear();
}

GameObjectManager* GameObjectManager::GetInstance()
{
	//gives me errors dont knwo why
	
	if (instance == nullptr)
	{
		instance = new GameObjectManager();
	}
	return instance;
	
	return nullptr;
}

void GameObjectManager::ReleaseInstance()
{
	if (instance != nullptr)
	{
		delete instance;
		instance = nullptr;
	}
	
}

GameObjectManager::GameObjectManager()
{
	Init();
}

GameObjectManager::GameObjectManager(GameObjectManager const& other)
{}

GameObjectManager& GameObjectManager::operator=(GameObjectManager const& other)
{
	return *this;
}

GameObjectManager::~GameObjectManager(){ Release(); };

int GameObjectManager::GetSize()
{
	return size;
}

void GameObjectManager::AddToList(GameObject* object)
{
	gameObjectList.push_back(object);
	size++;
}

void GameObjectManager::AddCar(GameObject* object)
{
	
	gameObjectList.push_back(object);
	//carList.push_back(object);
	
}

void GameObjectManager::AddCollectible(GameObject* object)
{
	gameObjectList.push_back(object);
	//collectibleList.push_back(object);
}

GameObject* GameObjectManager::GetFromList(int index)
{
	if (index < gameObjectList.size())
		return gameObjectList[index];
	return nullptr;
}

GameObject* GameObjectManager::GetFromList(std::string name)
{
	//unsure if needed
	return nullptr;
}

int GameObjectManager::GetIndex(std::string name)
{
	//unsure if needed
	return -1;
}

void GameObjectManager::Update(float dt)
{
	for (int i = 0; i < gameObjectList.size(); i++)
	{
		gameObjectList[i]->Update(dt);
	}
}

void GameObjectManager::Draw()
{
	for (int i = 0; i < gameObjectList.size(); i++)
	{
		gameObjectList[i]->Draw();
	}
}

void GameObjectManager::SetMesh(int index, Mesh* mesh)
{
	gameObjectList[index]->SetMesh(mesh);
}

void GameObjectManager::SetMaterial(int index, Material* material)
{
	gameObjectList[index]->SetMaterial(material);
}

float GameObjectManager::calcDistance(GameObject* a, GameObject* b)
{
	Transform* aTrans = a->GetTransform();
	Transform* bTrans = b->GetTransform();

	return sqrt(pow(aTrans->GetWorldPosition().x - bTrans->GetWorldPosition().x, 2.0f) +
		pow(aTrans->GetWorldPosition().y - bTrans->GetWorldPosition().y, 2.0f) +
		pow(aTrans->GetWorldPosition().z - bTrans->GetWorldPosition().z, 2.0f));
}

std::vector<GameObject*> GameObjectManager::GetList()
{
	return gameObjectList;
}

void GameObjectManager::RemoveFromList(std::string name)
{
	for (int i = 0; i < gameObjectList.size(); i++)
	{
		if (name == gameObjectList[i]->GetName()) {
			gameObjectList.erase(gameObjectList.begin()+i);
			break;
		}
	}
}

NS_END