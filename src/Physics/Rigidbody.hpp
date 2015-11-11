#pragma once

#include "../Config.hpp"

NS_BEGIN

/// <summary>
///
/// </summary>
class Rigidbody
{
public:

	Matrix GetInertia()const;
	void   SetInertia(Matrix inertia);

	Vector3 GetPosition()const;
	void    SetPosition(Vector3 position);

	Quaternion GetOrientation()const;
	void       SetOrientation(Quaternion orientation);

	float GetLinearDamping()const;
	void  SetLinearDamping(float damping);

	float GetAngularDamping()const;
	void  SetAngularDamping(float damping);

	float GetMass()const;
	void  SetMass(float mass);

	float GetRestitution()const;
	void  SetRestitution(float restitution);

private:
	Matrix m_Inertia;
	Vector3 m_Position;
	float m_LinearDamping;
	Quaternion m_Orientation;
	float m_AngularDamping;
	float m_Mass;
	float m_Restitution;
};

NS_END