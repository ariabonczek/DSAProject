#include "BoxCollider.hpp"

#include "../Graphics/Transform.hpp"
#include "../Graphics/Mesh.hpp"
#include "../Graphics/MeshBuilder.hpp"
#include "../Graphics/Material.hpp"

NS_BEGIN

BoxCollider::BoxCollider()
{
	m_DebugMesh = new Mesh(MeshBuilder::CreateCube(1.0f, Color::Green));
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

	for (uint i = 0; i < numVertices; ++i)
	{
		if (m_Min.x > vertices[i].x) 
			m_Min.x = vertices[i].x;
		else if (m_Max.x < vertices[i].x)
			m_Max.x = vertices[i].x;

		if (m_Min.y > vertices[i].y) 
			m_Min.y = vertices[i].y;
		else if (m_Max.y < vertices[i].y)
			m_Max.y = vertices[i].y;

		if (m_Min.z > vertices[i].z) 
			m_Min.z = vertices[i].z;
		else if (m_Max.z < vertices[i].z)
			m_Max.z = vertices[i].z;
	}

}

BoxCollider::BoxCollider(Vector3 min, Vector3 max, Transform* t):
	BoxCollider::BoxCollider()
{
	p_Transform = t;

	m_Min = min;
	m_Max = max;
}

BoxCollider::BoxCollider(Vector3 center, Vector3 halfSize, int dummy, Transform* t):
	BoxCollider::BoxCollider()
{
	p_Transform = t;

	m_Min = center - halfSize;
	m_Max = center + halfSize;
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

	return (m_Min.x + p.x < bc->m_Max.x + p2.x) && (m_Max.x + p.x> bc->m_Min.x + p2.x) &&
		(m_Min.y + p.y < bc->m_Max.y + p2.y) && (m_Max.y + p.y > bc->m_Min.y + p2.y) &&
		(m_Min.z + p.z < bc->m_Max.z + p2.z) && (m_Max.z + p.z > bc->m_Min.z + p2.z);
}

void BoxCollider::SetCollisionFlag()
{
	m_DebugMaterial->SetColor("tint", Color::Red);
}

void BoxCollider::DebugDraw(Matrix view, Matrix projection)
{
	m_DebugMaterial->SetFloat4x4("model", Matrix::CreateScale(Vector3(m_Max.x - m_Min.x, m_Max.y - m_Min.y, m_Max.z - m_Min.z)) * Matrix::CreateTranslation(p_Transform->GetWorldPosition()));
	m_DebugMaterial->SetFloat4x4("view", view);
	m_DebugMaterial->SetFloat4x4("projection", projection);

	m_DebugMaterial->Bind();
	m_DebugMesh->Draw();
	m_DebugMaterial->SetColor("tint", Color::Green);
}

NS_END