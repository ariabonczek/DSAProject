#ifndef MESH_HPP
#define MESH_HPP

#include "../Config.hpp"

NS_BEGIN

struct MeshData;

/// <summary>
/// Holds vertex and index information for rendering
/// </summary>
class Mesh
{
public:
	Mesh(MeshData& data);
	Mesh(const Mesh& mesh);
	~Mesh();

	Mesh& operator=(const Mesh& mesh);

	/// <summary>
	/// Renders the mesh
	/// </summary>
	void Draw();
private:

	/// <summary>
	/// Sets the vertex and index buffer to the pipeline
	/// </summary>
	void Bind();

	uint vertexBuffer;
	uint vertexArray;
	uint indexBuffer;

	uint numVertices;
	uint numIndices;
};

NS_END

#endif