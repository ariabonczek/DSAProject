#include "Rigidbody.hpp"

NS_BEGIN

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