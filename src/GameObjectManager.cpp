#include "GameObjectManager.h"
#include <math.h>

NS_BEGIN
GameObjectManager* GameObjectManager::instance = nullptr;

void GameObjectManager::Init(void)
{
	size = 0;
	nextID = 0;
}

void GameObjectManager::Release(void)
{
	objects.clear();
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
	return objects.size();
}

void GameObjectManager::InitializeObjects(){

	for (std::unordered_map<uint, GameObject*>::iterator it = objects.begin(); it != objects.end(); ++it)
	{
		it->second->Initialize();
	}
}

GameObject* GameObjectManager::GetCarComponent(){
	for (std::unordered_map<uint, GameObject*>::iterator it = objects.begin(); it != objects.end(); ++it)
	{
		if (it->second->GetComponent<Car>() == nullptr)
		{
			continue;
		}
		return it->second;
	}
}


uint GameObjectManager::GetNextID() {
	uint temp = nextID;
	nextID++;
	return temp;
}

uint GameObjectManager::GetID(){
	return 0;
}

GameObject* GameObjectManager::GetObject(uint id){
	return objects.at(id);
}

void GameObjectManager::Update(float dt)
{
	for (std::unordered_map<uint, GameObject*>::iterator is = objects.begin(); is != objects.end(); ++is)
	{
		objects.at(is->first)->Update(dt);
	}
}

void GameObjectManager::Draw()
{
	for (std::unordered_map<uint, GameObject*>::iterator is = objects.begin(); is != objects.end(); ++is)
	{
		GetObject(is->first)->Draw();
	}
}


void GameObjectManager::SetMesh(int id, Mesh* mesh)
{
	objects.at(id)->SetMesh(mesh);
}

void GameObjectManager::SetMaterial(int index, Material* material)
{
	objects.at(index)->SetMaterial(material);
}

float GameObjectManager::calcDistance(GameObject* a, GameObject* b)
{
	Transform* aTrans = a->GetTransform();
	Transform* bTrans = b->GetTransform();

	return sqrt(pow(aTrans->GetWorldPosition().x - bTrans->GetWorldPosition().x, 2.0f) +
		pow(aTrans->GetWorldPosition().y - bTrans->GetWorldPosition().y, 2.0f) +
		pow(aTrans->GetWorldPosition().z - bTrans->GetWorldPosition().z, 2.0f));
}



std::unordered_map<uint, GameObject*> GameObjectManager::GetList()
{
	return objects;
}

void GameObjectManager::AddObject(uint id, GameObject* object){
	std::pair<uint, GameObject*> newPair(id, object);
	objects.insert(newPair);
}

void GameObjectManager::RemoveFromList(uint id)
{
	for (std::unordered_map<uint, GameObject*>::iterator is = objects.begin(); is != objects.end(); ++is)
	{
		if (GetObject(is->first) == objects.at(id) ){
			std::unordered_map<uint, GameObject*>::iterator it = objects.find(id);
			if (it->second)
				objects.erase(it);

			break;
		}
	}
}

void GameObjectManager::FindCollided(GameObject* hit){
	for (std::unordered_map<uint, GameObject*>::iterator is = objects.begin(); is != objects.end(); ++is)
	{
		if (hit == is->second){
			RemoveFromList(is->first);
			break;
		}
	}

}

void GameObjectManager::SortCarsIntoTeams() {
	playerTeamList.clear();
	enemyTeamList.clear();

	for (std::unordered_map<uint, GameObject*>::iterator it = objects.begin(); it != objects.end(); it++) {
		if (it->second->GetComponent<Car>() == nullptr) continue; // not a car

		if (it->second->GetComponent<Car>()->IsEnemy()) {
			enemyTeamList.push_back(it->second);
		}
		else {
			playerTeamList.push_back(it->second);
		}
	}
}

std::vector<GameObject*> GameObjectManager::GetPlayerTeamList() {
	return playerTeamList;
}

std::vector<GameObject*> GameObjectManager::GetEnemyTeamList() {
	return enemyTeamList;
}

NS_END