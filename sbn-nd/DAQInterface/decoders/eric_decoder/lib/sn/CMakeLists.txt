set(LIB_NAME sn)

set(SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/femSN.cc
	${CMAKE_CURRENT_SOURCE_DIR}/src/channelSN.cc
)

set(HEADERS
	${CMAKE_CURRENT_SOURCE_DIR}/include/femSN.hh
	${CMAKE_CURRENT_SOURCE_DIR}/include/channelSN.hh
)

ROOT_GENERATE_DICTIONARY(snDict ${HEADERS} LINKDEF ${CMAKE_CURRENT_SOURCE_DIR}/LinkDef.hh)
list(APPEND SOURCES snDict.cxx)

if( USE_STATIC_LINKS )
	add_library(${LIB_NAME} STATIC ${SOURCES})
else()
	add_library(${LIB_NAME} SHARED ${SOURCES})
endif()

target_include_directories(sn PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_link_libraries(${LIB_NAME} PUBLIC ${ROOT_LIBRARIES})

install(TARGETS ${LIB_NAME} DESTINATION lib)
