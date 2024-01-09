
add_executable(vortexdb-executor test.cc)

target_link_libraries(vortexdb-executor velox_functions_lib
        velox_core velox_expression re2::re2)