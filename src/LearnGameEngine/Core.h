#pragma once
#ifdef LGE_PLATFORM_WINDOWS
	#ifdef LGE_BUILD_DLL
		#define LearnGameEngine_API __declspec(dllexport)
	#else
		#define  LearnGameEngine_API __declspec(dllimport)
	#endif
#else
	#error  LearnGameEngine Only sup window!
#endif
