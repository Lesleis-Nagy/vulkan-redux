add_executable(024_images main.cpp)

target_include_directories(024_images
        PUBLIC ${Vulkan_INCLUDE_DIRS}
               ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(024_images
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(024_images vert 024_shader_base.vert 024_shader_base.vert.spv)
add_shader(024_images frag 024_shader_base.frag 024_shader_base.frag.spv)

add_custom_command(
        TARGET  024_images POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/texture.jpg
                                         ${CMAKE_CURRENT_BINARY_DIR}/texture.jpg)
