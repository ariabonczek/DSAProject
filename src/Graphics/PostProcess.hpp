#ifndef POST_PROCESS_HPP
#define POST_PROCESS_CPP

#include "../Config.hpp"
#include "RenderTexture.hpp"
#include "Material.hpp"

NS_BEGIN

class PostProcess
{
public:
	PostProcess();
	~PostProcess();

	void SetRenderTexture(RenderTexture* rt);

	void Render();
private:
	RenderTexture* rt;

	bool LoadShader(std::string filepath, ShaderType type);

	uint vertexBuffer;
	uint vertexArray;
	uint indexBuffer;

	uint vertex, fragment;
	uint program;
};

NS_END

#endif