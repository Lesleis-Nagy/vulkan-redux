add_executable(016_drawing_rendering-and-presentation main.cpp)

target_include_directories(016_drawing_rendering-and-presentation
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(016_drawing_rendering-and-presentation
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(016_drawing_rendering-and-presentation vert 016_shader_base.vert 016_shader_base.vert.spv)
add_shader(016_drawing_rendering-and-presentation frag 016_shader_base.frag 016_shader_base.frag.spv)
