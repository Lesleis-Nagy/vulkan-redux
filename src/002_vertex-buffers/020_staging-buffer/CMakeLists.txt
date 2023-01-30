add_executable(020_staging-buffer main.cpp)

target_include_directories(020_staging-buffer
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(020_staging-buffer
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(020_staging-buffer vert 020_shader_base.vert 020_shader_base.vert.spv)
add_shader(020_staging-buffer frag 020_shader_base.frag 020_shader_base.frag.spv)
