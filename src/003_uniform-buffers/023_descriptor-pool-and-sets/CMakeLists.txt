add_executable(023_descriptor-pool-and-sets main.cpp)

target_include_directories(023_descriptor-pool-and-sets
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(023_descriptor-pool-and-sets
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(023_descriptor-pool-and-sets vert 023_shader_base.vert 023_shader_base.vert.spv)
add_shader(023_descriptor-pool-and-sets frag 023_shader_base.frag 023_shader_base.frag.spv)
