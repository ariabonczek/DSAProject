#ifndef MATERIAL_HPP
#define MATERIAL_HPP

#include "../Config.hpp"

NS_BEGIN

struct Color;

enum class ShaderType
{
	Vertex,
	TessControl,
	TessEval,
	Geometry,
	Fragment,
	Compute
};

/// <summary>
/// Holds shader and shader resource (textures, cubemaps, etc) information
/// </summary>
class Material
{
public:
	Material();
	Material(const Material& material);
	~Material();

	Material& operator=(const Material& material);

	/// <summary>
	/// Loads a shader from a file
	/// </summary>
	bool LoadShader(std::string filepath, ShaderType type);

	/// <summary>
	/// Sets the shader to the pipelin
	/// </summary>
	void Bind();

	/// <summary>
	/// Returns the shader program index
	/// </summary>
	uint GetProgram()const;

	/// <summary>
	/// Sets uniform variables on the GPU
	/// </summary>
	void SetFloat(std::string name, float& value);
	void SetFloat2(std::string name, Vector2& value);
	void SetFloat3(std::string name, Vector3& value);
	void SetFloat4(std::string name, Vector4& value);
	void SetFloat4x4(std::string name, Matrix& value);
	void SetColor(std::string name, Color& color);
private:
	uint vertex, tessControl, tessEval, geometry, fragment, compute;
	uint program;
};

NS_END

#endif