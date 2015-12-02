#ifndef GAMEOBJECT_HPP
#define GAMEOBJECT_HPP

#include "../Config.hpp"
#include "Transform.hpp"
#include <typeinfo>
#include <unordered_map>
#include "../GameObjectManager.h"

NS_BEGIN

class Mesh;
class Material;
class LuminaBehaviour;
class Collider;

/// <summary>
/// A basic game object
/// </summary>
class GameObject
{
public:
	GameObject(std::string name, Mesh* = nullptr, Material* = nullptr);
	GameObject(const GameObject& gameObject);
	~GameObject();

	GameObject& operator=(const GameObject& gameObject);

	void Initialize();

	/// <summary>
	/// Updates the object
	/// </summary>
	void Update(float dt);

	void OnCollision(Collider* c);
	void OnTrigger(Collider* c);

	/// <summary>
	/// Draws the object (if a mesh and material have been set)
	/// </summary>
	void Draw();

	/// <summary>
	/// Sets the mesh of the object
	/// </summary>
	void SetMesh(Mesh* mesh);

	void IncrementCrystals();
	int GetCrystals();

	/// <summary>
	/// Sets the material of the object
	/// </summary>
	void SetMaterial(Material* mat);

	template<class T>
	inline T* GetComponent()
	{
		if (components.find(typeid(T).name()) != components.end())
			return reinterpret_cast<T*>(components[typeid(T).name()]);
		return nullptr;
	}

	template<class T>
	void AddComponent(LuminaBehaviour* LuminaBehaviour)
	{
		if (components.find(typeid(T).name()) != components.end())
		{
#if _DEBUG
			std::cout << "[GameObject] Oh noes" << std::endl;
#endif
			return;
		}

		LuminaBehaviour->OnAddToGameObject(this);
		components[typeid(T).name()] = LuminaBehaviour;
	}
	
	std::string GetName()const;
	Transform* GetTransform();
	Mesh* GetMesh()const;
	Material* GetMaterial()const;
protected:
	std::unordered_map<std::string, LuminaBehaviour*> components;

	std::string name;
	Mesh* mesh;
	Material* material;
	int crystals;
	uint id;
};

NS_END


#endif