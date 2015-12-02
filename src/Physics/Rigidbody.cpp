#include "Rigidbody.hpp"

#include "../Graphics/GameObject.hpp"
#include "../Graphics/Transform.hpp"
#include "Collider.hpp"

#include "PhysicsUtility.hpp"

NS_BEGIN

Rigidbody::Rigidbody() :
	m_Mass(1.0f), m_Inertia(Matrix::Identity),
	m_LinearDamping(0.95f), m_AngularDamping(0.95f),
	m_ForceAccumulator(Vector3::Zero), m_TorqueAccumulator(Vector3::Zero)
{
	m_Orientation = Quaternion::Identity;
}

Rigidbody::~Rigidbody()
{}

void Rigidbody::OnAddToGameObject(GameObject* obj)
{
	LuminaBehaviour::OnAddToGameObject(obj);
	Collider* c = p_GameObject->GetComponent<Collider>();
	if (c)
	{
		c->SetRigidbody(this);
		for (uint i = 0; i < c->GetNumShapes(); ++i)
		{
			Shape* s = c->GetShape<Shape>(i);

			switch (s->m_Type)
			{
			case ShapeType::Box:
				m_Inertia = m_Inertia * CreateBoxInertia(c->GetBox(i), m_Mass);
				break;
			case ShapeType::Sphere:
				m_Inertia = m_Inertia * CreateSphereInertia(c->GetSphere(i), m_Mass);
				break;
			}
		}
	}
}

void Rigidbody::AddForce(Vector3 force)
{
	m_ForceAccumulator += force;
}

void Rigidbody::AddTorque(Vector3 torque)
{
	m_TorqueAccumulator += torque;
}

void Rigidbody::AddRelativeForce(Vector3 force)
{
	throw "Not implemented";
}

void Rigidbody::AddRelativeTorque(Vector3 torque)
{
	throw "Not implemented";
}

Vector3 Rigidbody::CalculateClosestPointOnBounds()
{
	throw "Not implemented";
}

void Rigidbody::Integrate()
{
	Transform* t = GetGameObject()->GetTransform();
	
	m_Position = t->GetLocalPosition();
	m_Orientation = t->GetLocalRotation();

	Vector3 linearAcceleration = m_ForceAccumulator * (1.0f / m_Mass);
	Vector3 angularAcceleration = m_TorqueAccumulator * Matrix::Inverse(m_Inertia);

	m_LinearVelocity = (m_LinearVelocity + linearAcceleration) * m_LinearDamping;
	m_AngularVelocity = (m_AngularVelocity + angularAcceleration) * m_AngularDamping;

	std::cout << "Angular Velocity: " << m_AngularVelocity << std::endl;

	m_Position += m_LinearVelocity;
	m_Orientation = (Quaternion::CreateFromEulerAngles(m_AngularVelocity) * m_Orientation).Normalized();

	GetGameObject()->GetTransform()->SetLocalPosition(m_Position);
	GetGameObject()->GetTransform()->SetLocalRotation(m_Orientation);

	m_TorqueAccumulator = Vector3::Zero;
	m_ForceAccumulator = Vector3::Zero;
}

Matrix Rigidbody::GetInertia()const
{
	return m_Inertia;
}

void Rigidbody::SetInertia(Matrix inertia)
{
	m_Inertia = inertia;
}

Vector3 Rigidbody::GetPosition()const
{
	return m_Position;
}

void Rigidbody::SetPosition(Vector3 position)
{
	m_Position = position;
}

Quaternion Rigidbody::GetOrientation()const
{
	return m_Orientation;
}

void Rigidbody::SetOrientation(Quaternion orientation)
{
	m_Orientation = orientation;
}

float Rigidbody::GetLinearDamping()const
{
	return m_LinearDamping;
}

void Rigidbody::SetLinearDamping(float damping)
{
	m_LinearDamping = damping;
}

float Rigidbody::GetAngularDamping()const
{
	return m_AngularDamping;
}

void Rigidbody::SetAngularDamping(float damping)
{
	m_AngularDamping = damping;
}

float Rigidbody::GetMass()const
{
	return m_Mass;
}

void Rigidbody::SetMass(float mass)
{
	m_Mass = mass;
}

float Rigidbody::GetRestitution()const
{
	return m_Restitution;
}

void Rigidbody::SetRestitution(float restitution)
{
	m_Restitution = restitution;
}

float Rigidbody::GetFriction()const
{
	return m_Friction;
}

void Rigidbody::SetFriction(float friction)
{
	m_Friction = friction;
}

Vector3 Rigidbody::GetCenterOfMass()const
{
	return m_CenterOfMass;
}

Vector3 Rigidbody::GetWorldCenterOfMass()
{
	throw "Not implemented";
}

Vector3 Rigidbody::GetLinearVelocity()const
{
	return m_LinearVelocity;
}

void Rigidbody::SetLinearVelocity(Vector3 velocity)
{
	m_LinearVelocity = velocity;
}

Vector3 Rigidbody::GetAngularVelocity()const
{
	return m_AngularVelocity;
}

void Rigidbody::SetAngularVelocity(Vector3 velocity)
{
	m_AngularVelocity = velocity;
}

NS_END