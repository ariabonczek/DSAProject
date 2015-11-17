#include "PhysicsContext.hpp"

#include "Collider.hpp"
#include "Rigidbody.hpp"
#include "PhysicsUtility.hpp"

#include "../Graphics/GameObject.hpp"
#include "../Graphics/TextRenderer.hpp"

NS_BEGIN

PhysicsContext g_PhysicsContext;

void PhysicsContext::Initialize(std::vector<GameObject*> allObjects)
{
	contacts.reserve(100);

	uint size = allObjects.size();
	for (uint i = 0; i < size; ++i)
	{
		Collider* collider = allObjects[i]->GetComponent<Collider>();
		if (collider)
		{
			PhysicsObject o;
			o.collider = collider;
			o.rigidbody = collider->GetRigidbody();
			m_Objects.push_back(o);
			++numCollidables;
		}
	}
}

void PhysicsContext::Simulate(float timeStep)
{
	if (numCollidables <= 1)
		return;

	// Setup Frame
	coarse.clear();
	contacts.clear();

	// Apply external forces
	for (uint i = 0; i < numCollidables; ++i)
	{
		if (m_Objects[i].rigidbody)
		{
			//m_Objects[i].rigidbody->AddForce(Vector3(0.0f, -9.8f * timeStep, 0.0f));
		}
	}

	// Coarse Collision Detection
	for (uint i = 0; i < numCollidables - 1; ++i)
	{
		Collider* c1 = m_Objects[i].collider;
		for (uint j = i + 1; j < numCollidables; ++j)
		{
			Collider* c2 = m_Objects[j].collider;
			
			// TODO: Octree optimization

			if (SAT(c1, c2))
			{
				CoarseContainer cc;
				cc.collider1 = c1;
				cc.collider2 = c2;
				coarse.push_back(cc);
				g_TextRenderer.SetFontColor(Color::Red);
				g_TextRenderer.RenderText("Collision Occurred", 100, 100);
			}
		}
	}
	
	// Fine Collision Detection
	for (uint i = 0; i < coarse.size(); ++i)
	{

	}

	// Collision Resolution
	for (uint i = 0; i < contacts.size(); ++i)
	{

	}

	// Integrate results
	for (uint i = 0; i < numCollidables; ++i)
	{
		PhysicsObject c = m_Objects[i];
		if (c.rigidbody)
		{
			c.rigidbody->Integrate();
		}
	}
}

void PhysicsContext::AddCollidable(Collider* collider)
{
	PhysicsObject obj;
	obj.collider = collider;
	obj.rigidbody = collider->GetRigidbody();

	m_Objects.push_back(obj);
	++numCollidables;
}

NS_END