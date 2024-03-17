workspace "LearnGameEngine"
	architecture "x64"

	configurations
	{
		"Debug",
		"Release",
		"Dist"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "LearnGameEngine"
	location  "LearnGameEngine"
	kind "SharedLib"
	language "C++"

	targertdir ("bin/" .. outputdir .."/%{prj.name}")		
	objdir ("bin-int/" .. outputdir .."/%{prj.name}")

	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name/src/**.cpp}"
	}

	includedirs
	{
		"%{prj.name/vendor/spdlog/include"
	}
	filtter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "10.0.22621.0"


		defines
		{
			"LGE_PLATFORM_WINDOWS",
			"LGE_BUILD_DLL"
			
		}

		
		postbuildcommands
		{
			("{COPY}  %{cfg.buildtarget.relpath} ../bin/" .. outputdir .. "/Sandbox")
		}

	filtter "configurations:Debug"
		defines "LGE_DEBUG"
		symbols "On"

	filtter "configurations:Release"
		defines "LGE_RELEASE"
		symbols "On"

	filtter "configurations:Dist"
		defines "LGE_DIST"
		symbols "On"


	filtter {"system:windows", "configurations:Release"}
	buildoptions "/MT"
	

project "Sandbox"
	location "Sandbox"
	kind "ConsoleApp"

	language "C++"

	targertdir ("bin/" .. outputdir .."/%{prj.name}")		
	objdir ("bin-int/" .. outputdir .."/%{prj.name}")

		files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name/src/**.cpp}"
	}

	includedirs
	{
		"%{prj.name/vendor/spdlog/include",
		"src"

	}

	links
	{
		"LearnGameEngine"
	}

	filtter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "10.0.22621.0"


		defines
		{
			"LGE_PLATFORM_WINDOWS"
			
		}

	filtter "configurations:Debug"
		defines "LGE_DEBUG"
		symbols "On"

	filtter "configurations:Release"
		defines "LGE_RELEASE"
		symbols "On"

	filtter "configurations:Dist"
		defines "LGE_DIST"
		symbols "On"