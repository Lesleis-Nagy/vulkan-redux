add_executable(020_vertex-buffer-creation main.cpp)

target_include_directories(020_vertex-buffer-creation
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(020_vertex-buffer-creation
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(020_vertex-buffer-creation vert 020_shader_base.vert 020_shader_base.vert.spv)
add_shader(020_vertex-buffer-creation frag 020_shader_base.frag 020_shader_base.frag.spv)
