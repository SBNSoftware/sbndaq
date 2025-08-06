set(SRCFILES
	src/utility.cc
)

if( USE_STATIC_LINKS )
	add_library(utils STATIC ${SRCFILES})
else()
	add_library(utils SHARED ${SRCFILES})
endif()

target_include_directories(utils PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
