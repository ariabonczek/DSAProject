#include "PostProcess.hpp"

#include "../Utility/FileSystem.hpp"

NS_BEGIN

PostProcess::PostProcess()
{
	///
	// Vertex Buffer
	///

	static const float vertices[] = {
		-1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
		1.0f, -1.0f, 0.0f, 1.0f, 0.0f,
		-1.0f, 1.0f, 0.0f, 0.0f, 1.0f,
		1.0f, 1.0f, 0.0f, 1.0f, 1.0f
	};

	glGenVertexArrays(1, &vertexArray);
	glBindVertexArray(vertexArray);

	glGenBuffers(1, &vertexBuffer);
	glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);

	glBufferData(GL_ARRAY_BUFFER, sizeof(float) * 4 * 5, vertices, GL_STATIC_DRAW);

	// Setup MeshVertex data
	/* Position: */ glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 15, 0);
	/* Texcoord */  glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 15, (void*)(sizeof(float) * 3));

	glEnableVertexAttribArray(0);
	glEnableVertexAttribArray(1);

	///
	// Index Buffer
	///

	static const uint indices[] = {
		0, 2, 1,
		2, 3, 1
	};

	glGenBuffers(1, &indexBuffer);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexBuffer);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(uint) * 6, indices, GL_STATIC_DRAW);

	LoadShader("Shaders/PostProcess/Vertex.vert", ShaderType::Vertex);
	LoadShader("Shaders/PostProcess/DrawToScreen.frag", ShaderType::Fragment);
}

PostProcess::~PostProcess()
{

}

void PostProcess::SetRenderTexture(RenderTexture* rt)
{
	this->rt = rt;
}

void PostProcess::Render()
{
	glUseProgram(program);
	rt->BindTexture();
	glBindVertexArray(vertexArray);
	glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexBuffer);

	glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, (void*)0);
}

bool PostProcess::LoadShader(std::string filepath, ShaderType type)
{
	if (!program)
		program = glCreateProgram();

	const char* shaderCode = FileSystem::LoadTextFile(filepath.c_str());

	if (!shaderCode)
	{
		//std::cout << "[PostProcess] Shader text not loaded from: " << filepath << std::endl;
		return 0;
	}

	uint* index = 0;
	GLenum t;
	switch (type)
	{
	case ShaderType::Vertex:
		index = &vertex;
		t = GL_VERTEX_SHADER;
		break;
	case ShaderType::Fragment:
		index = &fragment;
		t = GL_FRAGMENT_SHADER;
		break;
	default:
		return 0;
	}

	*index = glCreateShader(t);
	glShaderSource(*index, 1, &shaderCode, 0);
	glCompileShader(*index);

#if LUMINA_DEBUG
	GLint check;
	glGetShaderiv(*index, GL_COMPILE_STATUS, &check);

	if (!check)
	{
		char log[1000] = { 0 };
		int length;
		glGetShaderiv(*index, GL_INFO_LOG_LENGTH, &length);
		glGetShaderInfoLog(*index, length, 0, log);
		//std::cout << log << std::endl;

		return 0;
	}

	glAttachShader(program, *index);

	glLinkProgram(program);

	glGetProgramiv(program, GL_LINK_STATUS, &check);
	if (!check)
	{
		char log[1000] = { 0 };
		int length;
		glGetProgramiv(program, GL_INFO_LOG_LENGTH, &length);
		glGetShaderInfoLog(program, length, 0, log);
		//std::cout << log << std::endl;
		glDeleteProgram(program);

		return 0;
	}
#endif

	return true;
}


NS_END