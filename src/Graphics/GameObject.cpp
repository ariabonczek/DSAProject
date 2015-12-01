#include "GameObject.hpp"

#include "Mesh.hpp"
#include "Material.hpp"

NS_BEGIN

GameObject::GameObject(std::string name, Mesh* mesh, Material* material):
name(name),
mesh(mesh),
material(material)
{
	AddComponent<Transform>(new Transform());
}

GameObject::GameObject(const GameObject& gameObject)
{
	name = gameObject.name;
	mesh = gameObject.mesh;
	material = gameObject.material;
	crystals = 0;
	id = GameObjectManager::GetInstance()->GetNextID();
}

GameObject::~GameObject()
{
	for (std::unordered_map<std::string, LuminaBehaviour*>::iterator it = components.begin(); it != components.end(); ++it)
	{
		delete it->second;
	}
}

GameObject& GameObject::operator=(const GameObject& gameObject)
{
	name = gameObject.name;
	mesh = gameObject.mesh;
	material = gameObject.material;
	return *this;
}

void GameObject::Initialize()
{
	for (std::unordered_map<std::string, LuminaBehaviour*>::iterator it = components.begin(); it != components.end(); ++it)
	{
		it->second->Initialize();
	}
}

void GameObject::Update(float dt)
{
	for (std::unordered_map<std::string, LuminaBehaviour*>::iterator it = components.begin(); it != components.end(); ++it)
	{
		it->second->Update(dt);
	}
}

void GameObject::OnCollision(Collider* c)
{
	for (std::unordered_map<std::string, LuminaBehaviour*>::iterator it = components.begin(); it != components.end(); ++it)
	{
		it->second->OnCollision(c);
	}
}

void GameObject::Draw()
{
	material->Bind();

	material->SetFloat4x4("model", GetComponent<Transform>()->GetWorldMatrix());
	
	mesh->Draw();
}

void GameObject::SetMesh(Mesh* mesh)
{
	this->mesh = mesh;
}

void GameObject::SetMaterial(Material* mat)
{
	this->material = mat;
}

std::string GameObject::GetName()const
{
	return name;
}

Transform* GameObject::GetTransform()
{
	return GetComponent<Transform>();
}

Mesh* GameObject::GetMesh()const
{
	return mesh;
}

Material* GameObject::GetMaterial()const
{
	return material;
}

//for cars 
void GameObject::IncrementCrystals() {
	crystals++;
}

int GameObject::GetCrystals() {
	return crystals;
}

NS_END