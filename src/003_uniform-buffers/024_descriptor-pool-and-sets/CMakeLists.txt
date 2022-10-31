add_executable(024_descriptor-pool-and-sets main.cpp)

target_include_directories(024_descriptor-pool-and-sets
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(024_descriptor-pool-and-sets
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(024_descriptor-pool-and-sets vert 024_shader_base.vert 024_shader_base.vert.spv)
add_shader(024_descriptor-pool-and-sets frag 024_shader_base.frag 024_shader_base.frag.spv)
