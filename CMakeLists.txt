# ======================================================================
#  sbndaq-artdaq main build file
#
#  cd .../path/to/build/directory
#  source .../path/to/artdaq-demo/ups/setup_for_development
#  buildtool
#
# ======================================================================


cmake_minimum_required (VERSION 3.18.2)

find_package(cetmodules)
set(CET_CETBUILDTOOLS_COMPAT TRUE)
include(Compatibility)
set(CET_WARN_DEPRECATED)

project(sbndaq VERSION 1.07.02)

set(CMAKE_MODULE_PATH
  ${CMAKE_MODULE_PATH})
include(CetCMakeEnv)

cet_cmake_env()

cet_set_compiler_flags(DIAGS VIGILANT
  WERROR
  NO_UNDEFINED
  EXTRA_FLAGS -pedantic -pthread -Wno-unused-variable -Wno-overloaded-virtual
)

string(TOUPPER ${CMAKE_BUILD_TYPE} BTYPE_UC)
if(BTYPE_UC STREQUAL DEBUG)
  add_definitions(-DDEBUGME)
  if(DEFINED ENV{USE_ASAN})
    if($ENV{USE_ASAN} GREATER 0)
      message("!!! Address Sanitizer Activated!!!")
      add_compile_options(-fsanitize=address -Wno-unused-command-line-argument)
      add_link_options(-lasan)
    endif()
  endif()
  if(DEFINED ENV{USE_TSAN})
    if($ENV{USE_TSAN} GREATER 0)
      message("!!! Thread Sanitizer Activated!!!")
      add_compile_options(-fsanitize=thread -Wno-unused-command-line-argument)
      add_link_options(-ltsan)
    endif()
  endif()
  if(DEFINED ENV{USE_GCOV})
    add_compile_options(-fprofile-arcs -ftest-coverage --coverage)
    add_link_options(--coverage)
  endif()
endif()

#exeption stack trace
if(DEFINED ENV{USE_EXCEPTIONSTACKTRACE})
  if($ENV{USE_EXCEPTIONSTACKTRACE} GREATER 0)
    message("!!! Exception StackTrace Activated!!!")
    add_definitions(-D EXCEPTIONSTACKTRACE)
    set( EXCEPTIONSTACKTRACE_LIB  artdaq-core_Utilities_ExceptionStackTrace )
    add_compile_options( -rdynamic -Wno-unused-command-line-argument )
    add_link_options( -rdynamic )
  endif()
endif()

# Debug streamer.
string(TOUPPER ${CMAKE_BUILD_TYPE} BTYPE_UC)
if(BTYPE_UC STREQUAL DEBUG)
  add_definitions(-DDEBUGME)
endif()



if(DEFINED $ENV{MRB_QUALS})
  string(FIND $ENV{MRB_QUALS} "icarus" ICARUS_FOUND)
  IF (ICARUS_FOUND EQUAL -1)
     MESSAGE ("No ICARUS_BUILD?")
  ELSE()
     SET(ICARUS_BUILD 1)
     MESSAGE ("Performing ICARUS_BUILD")
  ENDIF()

  string(FIND $ENV{MRB_QUALS} "sbnd" SBND_FOUND)
  IF (SBND_FOUND EQUAL -1)
     MESSAGE ("No SBND_BUILD?")
  ELSE()
     SET(SBND_BUILD 1)
     MESSAGE ("Performing SBND_BUILD")
  ENDIF()
endif()

IF (NOT(SBND_BUILD OR ICARUS_BUILD))
   MESSAGE("No experiment-specific build specified. Building all.")
   SET(SBND_BUILD 1)
   SET(ICARUS_BUILD 1)
ENDIF()

# macros for artdaq_dictionary and basic_plugin
include(ArtMake)
include(BuildPlugins)
include(InstallPython)


find_ups_product( sbndaq_artdaq vi_04_00 )

# ADD SOURCE CODE SUBDIRECTORIES HERE
add_subdirectory(sbndaq)
add_subdirectory(sbn-fd)
add_subdirectory(configDB_tools)

cet_cmake_config()
