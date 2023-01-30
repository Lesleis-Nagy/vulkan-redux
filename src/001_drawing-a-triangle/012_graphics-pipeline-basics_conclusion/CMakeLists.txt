add_executable(012_graphics-pipeline-basics_conclusion main.cpp)

target_include_directories(012_graphics-pipeline-basics_conclusion
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(012_graphics-pipeline-basics_conclusion
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(012_graphics-pipeline-basics_conclusion vert 012_shader_base.vert 012_shader_base.vert.spv)
add_shader(012_graphics-pipeline-basics_conclusion frag 012_shader_base.frag 012_shader_base.frag.spv)
