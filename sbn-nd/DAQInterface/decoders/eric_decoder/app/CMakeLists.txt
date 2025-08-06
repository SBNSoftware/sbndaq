add_executable(decodeNU decodeNU.cpp)
add_executable(decodeSN decodeSN.cpp)

target_link_libraries(decodeNU ${ROOT_LIBRARIES} nu utils)
target_link_libraries(decodeSN ${ROOT_LIBRARIES} sn utils)
