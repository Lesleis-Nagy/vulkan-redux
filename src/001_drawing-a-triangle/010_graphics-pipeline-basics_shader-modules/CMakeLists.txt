add_executable(010_graphics-pipeline-basics_shader-modules main.cpp)

target_include_directories(010_graphics-pipeline-basics_shader-modules
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(010_graphics-pipeline-basics_shader-modules
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(010_graphics-pipeline-basics_shader-modules vert 010_shader_base.vert 010_shader_base.vert.spv)
add_shader(010_graphics-pipeline-basics_shader-modules frag 010_shader_base.frag 010_shader_base.frag.spv)
