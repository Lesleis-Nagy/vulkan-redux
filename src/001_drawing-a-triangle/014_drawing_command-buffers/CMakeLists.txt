add_executable(014_drawing_command-buffers main.cpp)

target_include_directories(014_drawing_command-buffers
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(014_drawing_command-buffers
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(014_drawing_command-buffers vert 014_shader_base.vert 014_shader_base.vert.spv)
add_shader(014_drawing_command-buffers frag 014_shader_base.frag 014_shader_base.frag.spv)
