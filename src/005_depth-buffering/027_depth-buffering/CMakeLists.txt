add_executable(027_depth-buffering main.cpp)

target_include_directories(027_depth-buffering
        PUBLIC ${Vulkan_INCLUDE_DIRS}
               ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(027_depth-buffering
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(027_depth-buffering vert 027_shader_base.vert 027_shader_base.vert.spv)
add_shader(027_depth-buffering frag 027_shader_base.frag 027_shader_base.frag.spv)

add_custom_command(
        TARGET  027_depth-buffering POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/texture.jpg
                                         ${CMAKE_CURRENT_BINARY_DIR}/texture.jpg)
