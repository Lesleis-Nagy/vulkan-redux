add_executable(029_generating-mipmaps main.cpp)

target_include_directories(029_generating-mipmaps
        PUBLIC ${Vulkan_INCLUDE_DIRS}
        ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(029_generating-mipmaps
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(029_generating-mipmaps vert 029_shader_base.vert 029_shader_base.vert.spv)
add_shader(029_generating-mipmaps frag 029_shader_base.frag 029_shader_base.frag.spv)

add_custom_command(
        TARGET  029_generating-mipmaps POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/viking_room.png
        ${CMAKE_CURRENT_BINARY_DIR}/viking_room.png)

add_custom_command(
        TARGET  029_generating-mipmaps POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/viking_room.obj
        ${CMAKE_CURRENT_BINARY_DIR}/viking_room.obj)
