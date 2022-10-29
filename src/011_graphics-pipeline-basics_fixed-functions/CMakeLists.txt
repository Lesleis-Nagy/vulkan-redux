add_executable(011_graphics-pipeline-basics_fixed-functions main.cpp)

target_include_directories(011_graphics-pipeline-basics_fixed-functions
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(011_graphics-pipeline-basics_fixed-functions
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(011_graphics-pipeline-basics_fixed-functions vert 011_shader_base.vert 011_shader_base.vert.spv)
add_shader(011_graphics-pipeline-basics_fixed-functions frag 011_shader_base.frag 011_shader_base.frag.spv)
