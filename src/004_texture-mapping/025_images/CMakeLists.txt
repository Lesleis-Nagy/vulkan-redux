add_executable(025_images main.cpp)

target_include_directories(025_images
        PUBLIC ${Vulkan_INCLUDE_DIRS}
               ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(025_images
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(025_images vert 025_shader_base.vert 025_shader_base.vert.spv)
add_shader(025_images frag 025_shader_base.frag 025_shader_base.frag.spv)

add_custom_command(
        TARGET  025_images POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/texture.jpg
                                         ${CMAKE_CURRENT_BINARY_DIR}/texture.jpg)
