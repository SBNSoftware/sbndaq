# ======================================================================
#  sbndaq main build file
#
#  cd .../path/to/build/directory
#  source .../path/to/sbndaq/ups/setup_for_development <-d|-p>
#  cmake [-DCMAKE_INSTALL_PREFIX=/install/path]
#        -DCMAKE_BUILD_TYPE=$CETPKG_TYPE
#        $CETPKG_SOURCE
#  make
#  make test
#  make install
#  make package (builds distribution tarfile)
# ======================================================================


cmake_minimum_required (VERSION 3.16)

find_package(cetbuildtools)

project(sbndaq VERSION 0.08.01)

# cetbuildtools contains our cmake modules
SET ( CETBUILDTOOLS_VERSION $ENV{CETBUILDTOOLS_VERSION} )
IF (NOT CETBUILDTOOLS_VERSION)
    MESSAGE (FATAL_ERROR "ERROR: setup cetbuildtools to get the cmake modules")
ENDIF()

set(CMAKE_MODULE_PATH $ENV{ART_DIR}/Modules
		      $ENV{CETBUILDTOOLS_DIR}/Modules
		      ${CMAKE_MODULE_PATH})

include(CetCMakeEnv)
cet_cmake_env()

cet_set_compiler_flags(DIAGS CAUTIOUS
  WERROR
  NO_UNDEFINED
  EXTRA_FLAGS -pedantic
  EXTRA_CXX_FLAGS -std=c++11 )

#exception stack trace
if(DEFINED ENV{USE_EXCEPTIONSTACKTRACE})
        if($ENV{USE_EXCEPTIONSTACKTRACE} GREATER 0)
                message("!!! Exception StackTrace Activated!!!")
                add_definitions(-D EXCEPTIONSTACKTRACE)
                set( EXCEPTIONSTACKTRACE_LIB  artdaq-core_Utilities_ExceptionStackTrace )
                cet_add_compiler_flags( -rdynamic )
        endif()
endif()

cet_report_compiler_flags()

# these are minimum required versions, not the actual product versions
find_ups_product( artdaq v3_10_02 )
find_ups_product( sbndaq_artdaq_core v0_08_01 )
find_ups_product( cetbuildtools v8_11_00 )

# macros for dictionary and simple_plugin
#include(ArtDictionary)
include(ArtMake)
include(BuildPlugins)
include(InstallPython)

# ADD SOURCE CODE SUBDIRECTORIES HERE
add_subdirectory(sbndaq)
add_subdirectory(sbn-fd)
add_subdirectory(configDB_tools)

# tests
# add_subdirectory(test)

# ups - table and config files
add_subdirectory(ups)

# packaging utility
include(UseCPack)
