add_executable(013_graphics-pipeline-basics_conclusion main.cpp)

target_include_directories(013_graphics-pipeline-basics_conclusion
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(013_graphics-pipeline-basics_conclusion
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(013_graphics-pipeline-basics_conclusion vert 013_shader_base.vert 013_shader_base.vert.spv)
add_shader(013_graphics-pipeline-basics_conclusion frag 013_shader_base.frag 013_shader_base.frag.spv)
