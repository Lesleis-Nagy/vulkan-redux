add_executable(013_drawing_framebuffers main.cpp)

target_include_directories(013_drawing_framebuffers
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(013_drawing_framebuffers
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(013_drawing_framebuffers vert 013_shader_base.vert 013_shader_base.vert.spv)
add_shader(013_drawing_framebuffers frag 013_shader_base.frag 013_shader_base.frag.spv)
