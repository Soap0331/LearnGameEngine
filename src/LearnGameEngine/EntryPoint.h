#pragma once



#ifdef LGE_PLATFORM_WINDOWS

extern  LearnGameEngine::Application* LearnGameEngine::CreateApplication();

int main(int argc, char** argv)
{
	LearnGameEngine::Log::Init();

	auto app = LearnGameEngine::CreateApplication();
	
	app->Run();
	delete app;
}

#endif
