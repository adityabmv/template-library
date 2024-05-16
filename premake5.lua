-- premake5.lua
workspace "Template Data Structures"
   architecture "x64"
   configurations { "Debug", "Release" }

project "containers"
   kind "StaticLib"
   language "C++"
   targetdir "bin"

   files { "**.h", "**.cpp", "**.c" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
