# decoder project cmake file
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# define project
project(decoder VERSION 1.0)

# specify C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# find ROOT package
list(APPEND CMAKE_PREFIX_PATH $ENV{ROOTSYS})
find_package(ROOT 6 REQUIRED COMPONENTS Core RIO Net)
if( ROOT_FOUND )
	message("ROOT found at $ENV{ROOTSYS}")
else()
	message(FATAL_ERROR "ROOT not installed")
endif()

# define ROOT functions and macros
include(${ROOT_USE_FILE})

add_subdirectory(lib/nu)
add_subdirectory(lib/sn)
add_subdirectory(lib/utils)
add_subdirectory(app)
