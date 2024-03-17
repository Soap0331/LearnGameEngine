#pragma once
#define SPDLOG_COMPILED_LIB
#include <memory>
#include "Core.h"

#include "spdlog/logger.h"
#include "spdlog/sinks/stdout_color_sinks.h"



namespace LearnGameEngine
{
	class  LearnGameEngine_API  Log
	{
	public:
		
		static void Init();
		inline static  std::shared_ptr<spdlog::logger>& GetCoreLogger() { return s_CoreLogger; }
		inline  static std::shared_ptr<spdlog::logger>& GetClinetLogger() { return s_ClientLogger; }
	private:
		static  std::shared_ptr<spdlog::logger> s_CoreLogger;
		static  std::shared_ptr < spdlog::logger> s_ClientLogger;
	};
}


