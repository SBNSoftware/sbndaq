set(LIB_NAME nu)

set(SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/femNU.cc
	${CMAKE_CURRENT_SOURCE_DIR}/src/channelNU.cc
)

set(HEADERS
	${CMAKE_CURRENT_SOURCE_DIR}/include/femNU.hh
	${CMAKE_CURRENT_SOURCE_DIR}/include/channelNU.hh
)

ROOT_GENERATE_DICTIONARY(nuDict ${HEADERS} LINKDEF ${CMAKE_CURRENT_SOURCE_DIR}/LinkDef.hh)
list(APPEND SOURCES nuDict.cxx)

if( USE_STATIC_LINKS )
	add_library(${LIB_NAME} STATIC ${SOURCES})
else()
	add_library(${LIB_NAME} SHARED ${SOURCES})
endif()

target_include_directories(nu PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_link_libraries(${LIB_NAME} PUBLIC ${ROOT_LIBRARIES})

install(TARGETS ${LIB_NAME} DESTINATION lib)
