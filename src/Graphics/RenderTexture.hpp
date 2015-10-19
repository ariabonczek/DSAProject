#ifndef RENDER_TEXTURE_HPP
#define RENDER_TEXTURE_HPP

#include "../Config.hpp"

NS_BEGIN

class RenderTexture
{
public:
	RenderTexture(uint width, uint height);
	~RenderTexture();

	void SetToRenderTarget();

	void ResetRenderTarget();

	void BindTexture();
	void BindDepth();
private:
	uint width, height;

	uint framebuffer;
	uint depthBuffer;
	uint texture;
	uint depth;
private:
};

NS_END

#endif