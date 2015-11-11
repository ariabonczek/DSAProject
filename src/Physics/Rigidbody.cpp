#include "Rigidbody.hpp"

NS_BEGIN

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

NS_END