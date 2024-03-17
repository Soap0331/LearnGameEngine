#include "LearnGameEngine.h"

class Sandbox : public LearnGameEngine::Application
{
public:
	Sandbox()
	{
		
	}
	~Sandbox()
	{
		
	}
	
	
};

LearnGameEngine::Application* LearnGameEngine :: CreateApplication()
{
	return new Sandbox();
}

