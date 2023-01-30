add_executable(025_image-view-and-sampler main.cpp)

target_include_directories(025_image-view-and-sampler
        PUBLIC ${Vulkan_INCLUDE_DIRS}
               ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(025_image-view-and-sampler
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(025_image-view-and-sampler vert 025_shader_base.vert 025_shader_base.vert.spv)
add_shader(025_image-view-and-sampler frag 025_shader_base.frag 025_shader_base.frag.spv)

add_custom_command(
        TARGET  025_image-view-and-sampler POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/texture.jpg
                                         ${CMAKE_CURRENT_BINARY_DIR}/texture.jpg)
