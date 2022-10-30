add_executable(012_graphics-pipeline-basics_render-passes main.cpp)

target_include_directories(012_graphics-pipeline-basics_render-passes
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(012_graphics-pipeline-basics_render-passes
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(012_graphics-pipeline-basics_render-passes vert 012_shader_base.vert 012_shader_base.vert.spv)
add_shader(012_graphics-pipeline-basics_render-passes frag 012_shader_base.frag 012_shader_base.frag.spv)
