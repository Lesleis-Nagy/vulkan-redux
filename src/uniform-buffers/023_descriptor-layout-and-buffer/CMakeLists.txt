add_executable(023_descriptor-layout-and-buffer main.cpp)

target_include_directories(023_descriptor-layout-and-buffer
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(023_descriptor-layout-and-buffer
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(023_descriptor-layout-and-buffer vert 023_shader_base.vert 023_shader_base.vert.spv)
add_shader(023_descriptor-layout-and-buffer frag 023_shader_base.frag 023_shader_base.frag.spv)
