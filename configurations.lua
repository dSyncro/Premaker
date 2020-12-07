configurations {
	"Debug32",
	"Release32",
	"Dist32",
	"Debug64",
	"Release64",
	"Dist64",
}

filter "system:windows"
	systemversion "latest"

filter "system:linux"
	systemversion "latest"

filter "configurations:Debug*"
	defines "DEBUG"
	runtime "Debug"
	symbols "on"

filter "configurations:Release*"
	defines "RELEASE"
	runtime "Release"
	optimize "on"

filter "configurations:Dist*"
	defines "DIST"
	runtime "Release"
	optimize "on"

filter "configurations:*32"
	architecture "x86"

filter "configurations:*64"
	architecture "x86_64"

filter {}