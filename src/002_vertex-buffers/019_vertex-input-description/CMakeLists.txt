add_executable(019_vertex-input-description main.cpp)

target_include_directories(019_vertex-input-description
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(019_vertex-input-description
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(019_vertex-input-description vert 019_shader_base.vert 019_shader_base.vert.spv)
add_shader(019_vertex-input-description frag 019_shader_base.frag 019_shader_base.frag.spv)
