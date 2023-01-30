add_executable(009_graphics-pipeline-basics_shader-modules main.cpp)

target_include_directories(009_graphics-pipeline-basics_shader-modules
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(009_graphics-pipeline-basics_shader-modules
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(009_graphics-pipeline-basics_shader-modules vert 009_shader_base.vert 009_shader_base.vert.spv)
add_shader(009_graphics-pipeline-basics_shader-modules frag 009_shader_base.frag 009_shader_base.frag.spv)
