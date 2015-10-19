#ifndef MATERIAL_HPP
#define MATERIAL_HPP

#include "../Config.hpp"
#include "../Graphics/Texture2D.hpp"
#include <unordered_map>

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

struct ShaderVariable
{
	uint offset;
	uint size;
	uint index;
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
	//template <typename T>
	//void SetData(std::string name, T& value)
	//{
	//	// Update data
	//	std::unordered_map<std::string, ShaderVariable>::iterator it = uniforms.find(name);
	//	if ( it != uniforms.end())
	//	{
	//		memcpy(&data[it->second.offset], &value, sizeof(T));
	//		return;
	//	}
	//
	//	uint location = glGetUniformLocation(program, name.c_str());
	//	if (location)
	//	{
	//		uint toAdd = sizeof(T) / sizeof(float); // # of floats we're adding
	//
	//		float* temp = new float[size + toAdd];  // New memory block of the correct size
	//
	//		if (data)									// If there was old data...
	//		{
	//			memcpy(temp, data, sizeof(float) * size); // Copy old data into new block
	//			//delete data;
	//		}
	//		data = temp;							// Set the data pointer to new block
	//		memcpy(data + toAdd, &value, sizeof(T));	// And copy the new data into our block
	//
	//		ShaderVariable v;
	//		v.index = location;
	//		v.offset = size * sizeof(float);
	//		v.size = sizeof(T) / sizeof(float);
	//
	//		uniforms.insert(std::pair<std::string, ShaderVariable>(name, v));
	//
	//		size += toAdd;
	//	}
	//	else
	//	{
	//		std::cout << "[Material] Uniform variable " << name << " not found in shader." << std::endl;
	//	}
	//}
	void SetTexture2D(std::string name, Texture2D* texture);

	// Deprecated
	void SetFloat(std::string name, float& value);
	void SetFloat2(std::string name, Vector2& value);
	void SetFloat3(std::string name, Vector3& value);
	void SetFloat4(std::string name, Vector4& value);
	void SetFloat4x4(std::string name, Matrix& value);
	void SetColor(std::string name, Color& color);

private:
	std::unordered_map<std::string, Texture2D*> textures;
	std::unordered_map<std::string, ShaderVariable> uniforms;

	float* data;
	uint size;

	uint vertex, tessControl, tessEval, geometry, fragment, compute;
	uint program;
};

NS_END

#endif