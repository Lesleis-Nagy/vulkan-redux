add_executable(022_index-buffer main.cpp)

target_include_directories(022_index-buffer
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(022_index-buffer
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(022_index-buffer vert 022_shader_base.vert 022_shader_base.vert.spv)
add_shader(022_index-buffer frag 022_shader_base.frag 022_shader_base.frag.spv)
