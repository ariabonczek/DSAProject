#ifndef GAMEOBJECT_HPP
#define GAMEOBJECT_HPP

#include "../Config.hpp"
#include "Transform.hpp"
#include <typeinfo>
#include <unordered_map>

NS_BEGIN

class Mesh;
class Material;
class LuminaBehaviour;

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

	/// <summary>
	/// Updates the object
	/// </summary>
	virtual void Update(float dt);

	/// <summary>
	/// Draws the object (if a mesh and material have been set)
	/// </summary>
	void Draw();

	/// <summary>
	/// Sets the mesh of the object
	/// </summary>
	void SetMesh(Mesh* mesh);

	/// <summary>
	/// Sets the material of the object
	/// </summary>
	void SetMaterial(Material* mat);

	template<class T>
	T* GetComponent()
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
	Transform* GetTransform()const;
	Mesh* GetMesh()const;
	Material* GetMaterial()const;
protected:
	std::unordered_map<std::string, LuminaBehaviour*> components;
	std::string name;
	Transform* transform;
	Mesh* mesh;
	Material* material;
};

NS_END


#endif