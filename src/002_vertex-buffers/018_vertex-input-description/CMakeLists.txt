add_executable(018_vertex-input-description main.cpp)

target_include_directories(018_vertex-input-description
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(018_vertex-input-description
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(018_vertex-input-description vert 018_shader_base.vert 018_shader_base.vert.spv)
add_shader(018_vertex-input-description frag 018_shader_base.frag 018_shader_base.frag.spv)
