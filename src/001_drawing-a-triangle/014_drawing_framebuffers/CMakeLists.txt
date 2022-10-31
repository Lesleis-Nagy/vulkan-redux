add_executable(014_drawing_framebuffers main.cpp)

target_include_directories(014_drawing_framebuffers
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(014_drawing_framebuffers
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(014_drawing_framebuffers vert 014_shader_base.vert 014_shader_base.vert.spv)
add_shader(014_drawing_framebuffers frag 014_shader_base.frag 014_shader_base.frag.spv)
