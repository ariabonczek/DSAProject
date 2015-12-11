#include "PhysicsContext.hpp"

#include "Collider.hpp"
#include "Rigidbody.hpp"
#include "PhysicsUtility.hpp"
#include "../Utility/Timer.hpp"

#include "../Graphics/GameObject.hpp"
#include "../Graphics/TextRenderer.hpp"

NS_BEGIN

//PhysicsContext g_PhysicsContext;

void PhysicsContext::Initialize(std::unordered_map<uint, GameObject*> allObjects)
{
	contacts.reserve(100);

	uint size = allObjects.size();
	for (std::unordered_map<uint, GameObject*>::iterator it = allObjects.begin(); it != allObjects.end(); ++it)
	{
		Collider* collider = it->second->GetComponent<Collider>();
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

	grid.FillGrid(m_Objects);

	// Apply external forces
	for (uint i = 0; i < numCollidables; ++i)
	{
		if (m_Objects[i].rigidbody)
		{
			//m_Objects[i].rigidbody->AddForce(Vector3(0.0f, -9.8f * timeStep, 0.0f));
		}
	}

	for (int x = 0; x < 4; ++x)
	{
		for (int z = 0; z < 4; ++z)
		{
			std::vector<PhysicsObject*> objs = grid.GetAllAdjacentObjects(x, z);
			int num = objs.size();

			if (num <= 1)
				continue;

			for (uint i = 0; i < num - 1; ++i)
			{
				Collider* c1 = objs[i]->collider;
				for (uint j = i + 1; j < num; ++j)
				{
					Collider* c2 = objs[j]->collider;

					CoarseContainer cc;

					// NOTE: SAT IS NOT A COARSE COLLISION DETECTOR
					if (SAT(c1, c2))
					{
						if (c1->GetIsTrigger() || c2->GetIsTrigger())
						{
							c1->GetGameObject()->OnTrigger(c2);
							c2->GetGameObject()->OnTrigger(c1);

							continue;
						}

						c1->GetGameObject()->OnCollision(c2);
						c2->GetGameObject()->OnCollision(c1);

						cc.collider1 = c1;
						cc.collider2 = c2;

						coarse.push_back(cc);
					}
				}
			}

		}
	}

	// Fine Collision Detection
	for (uint i = 0; i < coarse.size(); ++i)
	{
		ContactContainer cc;
		if (ContactGeneration(coarse[i].collider1, coarse[i].collider2, cc))
		{
			contacts.push_back(cc);
			//std::cout << "Contact Point: " << cc.contactPoint << std::endl;
		//	std::cout << "Contact Normal: " << cc.contactNormal << std::endl;
		}
	}
	
	// Collision Resolution
	for (uint i = 0; i < contacts.size(); ++i)
	{	
		ResolveCollisionSimple(contacts[i]);
		continue;

		Rigidbody* r1 = contacts[i].rigidbody[0];
		Rigidbody* r2 = contacts[i].rigidbody[1];
		
		if (r1 && r2)
		{
			ResolveCollision(r1, r2);
			continue;
		}
		
		if (r1 && !r2)
		{
			ResolveCollision(r1, coarse[i].collider2);
			continue;
		}
		
		if (!r1 && r2)
		{
			ResolveCollision(r2, coarse[i].collider1);
			continue;
		}
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

void PhysicsContext::DeleteObjects(){
	m_Objects.clear();

	//clears just in case 
	coarse.clear();
	contacts.clear();
	numCollidables = 0;
}

NS_END