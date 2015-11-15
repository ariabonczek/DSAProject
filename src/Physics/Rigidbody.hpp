#pragma once

#include "../Config.hpp"
#include "../Graphics/LuminaBehaviour.hpp"

NS_BEGIN

/// <summary>
///
/// </summary>
class Rigidbody : LuminaBehaviour
{
public:

	void AddForce(Vector3 force);
	void AddTorque(Vector3 torque);

	void AddRelativeForce(Vector3 force);
	void AddRelativeTorque(Vector3 torque);

	Vector3 CalculateClosestPointOnBounds();

	///////////////////
	// Gets and Sets //
	///////////////////

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

	float GetFriction()const;
	void  SetFriction(float friction);

	Vector3 GetCenterOfMass()const;
	Vector3 GetWorldCenterOfMass();

	Vector3 GetLinearVelocity()const;
	void    SetLinearVelocity(Vector3 velocity);

	Vector3 GetAngularVelocity()const;
	void    SetAngularVelocity(Vector3 velocity);
private:
	Matrix m_Inertia;
	Vector3 m_Position;
	float m_LinearDamping;
	Quaternion m_Orientation;
	float m_AngularDamping;
	float m_Mass;
	float m_Restitution;
	float m_Friction;

	Vector3 m_CenterOfMass;
	Vector3 m_LinearVelocity;
	Vector3 m_AngularVelocity;

	Vector3 m_TorqueAccumulator;
	Vector3 m_ForceAccumulator;

};

NS_END