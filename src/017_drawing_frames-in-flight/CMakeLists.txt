add_executable(017_drawing_frames-in-flight main.cpp)

target_include_directories(017_drawing_frames-in-flight
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(017_drawing_frames-in-flight
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(017_drawing_frames-in-flight vert 017_shader_base.vert 017_shader_base.vert.spv)
add_shader(017_drawing_frames-in-flight frag 017_shader_base.frag 017_shader_base.frag.spv)
