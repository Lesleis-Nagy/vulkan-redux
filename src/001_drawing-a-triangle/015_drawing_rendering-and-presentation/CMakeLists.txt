add_executable(015_drawing_rendering-and-presentation main.cpp)

target_include_directories(015_drawing_rendering-and-presentation
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(015_drawing_rendering-and-presentation
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(015_drawing_rendering-and-presentation vert 015_shader_base.vert 015_shader_base.vert.spv)
add_shader(015_drawing_rendering-and-presentation frag 015_shader_base.frag 015_shader_base.frag.spv)
