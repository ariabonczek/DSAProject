#include "BoxCollider.hpp"

#include "../Graphics/Transform.hpp"
#include "../Graphics/Mesh.hpp"
#include "../Graphics/MeshBuilder.hpp"
#include "../Graphics/Material.hpp"
#include "../Collectible.h"

NS_BEGIN

BoxCollider::BoxCollider()
{
	m_DebugMesh = new Mesh(MeshBuilder::CreateCube(1.0f, Color::Green));
	m_DebugOuterMesh = new Mesh(MeshBuilder::CreateSphere(1.0f, 3, Color::Green));
	m_DebugMaterial = new Material();
	m_DebugMaterial->LoadShader("Shaders/default.vert", ShaderType::Vertex);
	m_DebugMaterial->LoadShader("Shaders/boundingBox.frag", ShaderType::Fragment);
}

BoxCollider::BoxCollider(std::vector<Vector3> vertices, Transform* t) :
	BoxCollider::BoxCollider()
{
	p_Transform = t;

	uint numVertices =vertices.size();

	if (numVertices == 0)
		return;

	m_Max = m_Min = vertices[0];

	for (uint i = 1; i < numVertices; i++) {
		if (m_Min.x > vertices[i].x) //If min is larger than current
			m_Min.x = vertices[i].x;
		else if (m_Max.x < vertices[i].x)//if max is smaller than current
			m_Max.x = vertices[i].x;

		if (m_Min.y > vertices[i].y) //If min is larger than current
			m_Min.y = vertices[i].y;
		else if (m_Max.y < vertices[i].y)//if max is smaller than current
			m_Max.y = vertices[i].y;

		if (m_Min.z > vertices[i].z) //If min is larger than current
			m_Min.z = vertices[i].z;
		else if (m_Max.z < vertices[i].z)//if max is smaller than current
			m_Max.z = vertices[i].z;
	}

	m_Center = (m_Min + m_Max) / 2.0f;

	m_HalfWidth.x = Vector3::Distance(Vector3(m_Min.x, 0.0f, 0.0f), Vector3(m_Max.x, 0.0f, 0.0f)) / 2.0f;
	m_HalfWidth.y = Vector3::Distance(Vector3(0.0f, m_Min.y, 0.0f), Vector3(0.0f, m_Max.y, 0.0f)) / 2.0f;
	m_HalfWidth.z = Vector3::Distance(Vector3(0.0f, 0.0f, m_Min.z), Vector3(0.0f, 0.0f, m_Max.z)) / 2.0f;

}

BoxCollider::BoxCollider(Vector3 min, Vector3 max, Transform* t):
	BoxCollider::BoxCollider()
{
	p_Transform = t;

	m_Min = min;
	m_Max = max;

	m_HalfWidth = (max - min) * 0.5f;
}

BoxCollider::BoxCollider(Vector3 center, Vector3 halfSize, int dummy, Transform* t):
	BoxCollider::BoxCollider()
{
	p_Transform = t;

	m_Min = center - halfSize;
	m_Max = center + halfSize;
	m_Center = center;

	m_HalfWidth = halfSize;
}

BoxCollider::BoxCollider(const BoxCollider& bc)
{
	m_Min = bc.m_Min;
	m_Max = bc.m_Max;
	p_Transform = bc.p_Transform;
}

BoxCollider::~BoxCollider()
{

}

BoxCollider& BoxCollider::operator=(const BoxCollider& bc)
{
	m_Min = bc.m_Min;
	m_Max = bc.m_Max;
	p_Transform = bc.p_Transform;
	return *this;
}

bool BoxCollider::CheckCollision(BoxCollider* bc)
{
	Vector3 p = p_Transform->GetWorldPosition();
	Vector3 p2 = bc->p_Transform->GetWorldPosition();
	
	// Check outer sphere collision
	float scale = m_HalfWidth.x;
	if (m_HalfWidth.y > scale)
		scale = m_HalfWidth.y;
	if (m_HalfWidth.z > scale)
		scale = m_HalfWidth.z;

	float scale2 = bc->m_HalfWidth.x;
	if (bc->m_HalfWidth.y > scale)
		scale = bc->m_HalfWidth.y;
	if (bc->m_HalfWidth.z > scale)
		scale = bc->m_HalfWidth.z;

	if (Vector3::Distance(m_Center, bc->m_Center) > scale + scale2)
	{
		return false;
	}

	// Check inner box collision
	return (m_Min.x + p.x < bc->m_Max.x + p2.x) && (m_Max.x + p.x> bc->m_Min.x + p2.x) &&
		(m_Min.y + p.y < bc->m_Max.y + p2.y) && (m_Max.y + p.y > bc->m_Min.y + p2.y) &&
		(m_Min.z + p.z < bc->m_Max.z + p2.z) && (m_Max.z + p.z > bc->m_Min.z + p2.z);
}

void BoxCollider::SetCollisionFlag(bool value)
{
	collisionFlag = value;
}

void BoxCollider::DebugDraw(Matrix view, Matrix projection)
{
	m_DebugMaterial->SetFloat4x4("view", view);
	m_DebugMaterial->SetFloat4x4("projection", projection);

	SetModelMatrix(p_Transform->GetWorldMatrix());

	float scale = m_HalfWidth.x;
	if (m_HalfWidth.y > scale)
		scale = m_HalfWidth.y;
	if (m_HalfWidth.z > scale)
		scale = m_HalfWidth.z;

	m_DebugMaterial->SetFloat4x4("model", Matrix::CreateScale(scale * 1.2f) *
		Matrix::CreateTranslation(m_OCenter));

	m_DebugMaterial->Bind();
	m_DebugOuterMesh->Draw();

	m_DebugMaterial->SetFloat4x4("model", Matrix::CreateFromQuaternion(p_Transform->GetWorldRotation()) *
		Matrix::CreateScale(m_HalfWidth) *
		Matrix::CreateTranslation(p_Transform->GetWorldPosition()));

	m_DebugMesh->Draw();

	m_DebugMaterial->SetColor("tint", Color::Green);
}

void BoxCollider::SetModelMatrix(Matrix worldMatrix) 
{
	Vector3 corner[8];
	corner[0] = Vector3(m_Min.x, m_Min.y, m_Min.z);
	corner[1] = Vector3(m_Max.x, m_Min.y, m_Min.z);
	corner[2] = Vector3(m_Min.x, m_Max.y, m_Min.z);
	corner[3] = Vector3(m_Max.x, m_Max.y, m_Min.z);

	corner[4] = Vector3(m_Min.x, m_Min.y, m_Max.z);
	corner[5] = Vector3(m_Max.x, m_Min.y, m_Max.z);
	corner[6] = Vector3(m_Min.x, m_Max.y, m_Max.z);
	corner[7] = Vector3(m_Max.x, m_Max.y, m_Max.z);

	for (uint i = 0; i < 8; i++) {
		Vector4 v = Vector4(corner[i], 1.0f) * p_Transform->GetWorldMatrix();
		corner[i] = Vector3(v.x, v.y, v.z);
	}

	m_OMin = m_OMax = corner[0];
	for (uint i = 1; i < 8; i++)
	{
		if (m_OMin.x > corner[i].x) //If min is larger than current
			m_OMin.x = corner[i].x;
		else if (m_OMax.x < corner[i].x)//if max is smaller than current
			m_OMax.x = corner[i].x;

		if (m_OMin.y > corner[i].y) //If min is larger than current
			m_OMin.y = corner[i].y;
		else if (m_OMax.y < corner[i].y)//if max is smaller than current
			m_OMax.y = corner[i].y;

		if (m_OMin.z > corner[i].z) //If min is larger than current
			m_OMin.z = corner[i].z;
		else if (m_OMax.z < corner[i].z)//if max is smaller than current
			m_OMax.z = corner[i].z;
	}

	m_OCenter = (m_OMin + m_OMax) / 2.0f;
	m_OHalfWidth.x = Vector3::Distance(Vector3(m_OMin.x, 0.0f, 0.0f), Vector3(m_OMax.x, 0.0f, 0.0f)) / 2.0f;
	m_OHalfWidth.y = Vector3::Distance(Vector3(0.0f, m_OMin.y, 0.0f), Vector3(0.0f, m_OMax.y, 0.0f)) / 2.0f;
	m_OHalfWidth.z = Vector3::Distance(Vector3(0.0f, 0.0f, m_OMin.z), Vector3(0.0f, 0.0f, m_OMax.z)) / 2.0f;
}

Matrix BoxCollider::GetModelMatrix(void) const{
	return p_Transform->GetWorldMatrix();
}

bool BoxCollider::GetCollisionFlag()const
{
	return collisionFlag;
}
Vector3 BoxCollider::GetCenterLocal(void) const{
	return m_Center;
}

Vector3 BoxCollider::GetCenterGlobal(void) const{
	return p_Transform->GetLocalPosition();
}

Vector3 BoxCollider::GetHalfWidth(void) const{
	return m_HalfWidth;
}

Vector3 BoxCollider::O_GetHalfWidth(void) const{
	return m_OHalfWidth;
}
Vector3 BoxCollider::GetMin() const{
	return m_Min;
}

Vector3 BoxCollider::GetMax() const{
	return m_Max;
}

Vector3 BoxCollider::GetXAxis()
{
	return p_Transform->GetRight();
}

Vector3 BoxCollider::GetYAxis()
{
	return p_Transform->GetUp();
}

Vector3 BoxCollider::GetZAxis()
{
	return p_Transform->GetForward();
}

void BoxCollider::SetColor(Color color)
{
	m_DebugMaterial->SetColor("tint", color);
}

void BoxCollider::SetVisibility(bool value)
{
	isVisible = value;
}

bool BoxCollider::GetVisibility(void)const {
	return isVisible;
}

NS_END