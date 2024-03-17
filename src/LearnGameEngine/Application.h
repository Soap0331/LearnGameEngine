#pragma once

#include "Core.h"

namespace LearnGameEngine
{
	class LearnGameEngine_API  Application
	{
	public:
		Application();
		virtual ~Application();

		void Run();
	};


	// To be define in CLIENT
	Application* CreateApplication();
	
}
