add_executable(021_index-buffer main.cpp)

target_include_directories(021_index-buffer
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(021_index-buffer
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(021_index-buffer vert 021_shader_base.vert 021_shader_base.vert.spv)
add_shader(021_index-buffer frag 021_shader_base.frag 021_shader_base.frag.spv)
