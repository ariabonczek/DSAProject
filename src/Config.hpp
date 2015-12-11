#ifndef CONFIG_HPP
#define CONFIG_HPP

#define NS_BEGIN namespace LuminaGL {
#define NS_END }

#define WINDOW_WIDTH 1280
#define WINDOW_HEIGHT 720
#define WINDOW_TITLE "Bumper League"
#define MSAA_SAMPLES 4
#define LUMINA_DEBUG 1

#include <GL\glew.h>
#include <GLFW\glfw3.h> 

#include "Math\Math.hpp"

#include <string>
#include <vector>
#include <algorithm>

#if LUMINA_DEBUG
#include <iostream>
#define _CRTDBG_MAP_ALLOC
#include <stdlib.h>
#include <crtdbg.h>
#endif

#define FOR(x) for(uint i = 0; i < x; ++i)

typedef unsigned char uint8;
typedef char int8;
typedef unsigned short uint16;
typedef short int16;
typedef unsigned int uint32;
typedef int int32;
typedef unsigned long long uint64;
typedef long long int64;

#endif