project "tracy"
	kind "StaticLib"
	language "C"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "public/common/tracy_lz4.hpp",
		"public/common/tracy_lz4hc.hpp",
		"public/common/TracyAlign.hpp",
		"public/common/TracyAlloc.hpp",
		"public/common/TracyApi.h",
		"public/common/TracyColor.hpp",
		"public/common/TracyForceInline.hpp",
		"public/common/TracyMutex.hpp",
		"public/common/TracyProtocol.hpp",
		"public/common/TracyQueue.hpp",
		"public/common/TracySocket.hpp",
		"public/common/TracyStackFrames.hpp",
		"public/common/TracySystem.hpp",
		"public/common/TracyUwp.hpp",
		"public/common/TracyYield.hpp",

		"public/TracyClient.cpp",
        
		"public/client/tracy_concurrentqueue.h",
		"public/client/tracy_rpmalloc.hpp",
		"public/client/tracy_SPSCQueue.h",
		"public/client/TracyKCore.hpp",
		"public/client/TracyArmCpuTable.hpp",
		"public/client/TracyCallstack.h",
		"public/client/TracyCallstack.hpp",
		"public/client/TracyCpuid.hpp",
		"public/client/TracyDebug.hpp",
		"public/client/TracyDxt1.hpp",
		"public/client/TracyFastVector.hpp",
		"public/client/TracyLock.hpp",
		"public/client/TracyProfiler.hpp",
		"public/client/TracyRingBuffer.hpp",
		"public/client/TracyScoped.hpp",
		"public/client/TracyStringHelpers.hpp",
		"public/client/TracySysPower.hpp",
		"public/client/TracySysTime.hpp",
		"public/client/TracySysTrace.hpp",
		"public/client/TracyThread.hpp"
	}

	includedirs
	{
		"public/tracy/Tracy.hpp",
		"public/tracy/TracyD3D11.hpp",
		"public/tracy/TracyD3D12.hpp",
		"public/tracy/TracyLua.hpp",
		"public/tracy/TracyOpenCL.hpp",
		"public/tracy/TracyOpenGL.hpp",
		"public/tracy/TracyVulkan.hpp"
	}

	defines
	{
		"TRACY_ENABLE"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
