add_executable(030_multisampling main.cpp)

target_include_directories(030_multisampling
        PUBLIC ${Vulkan_INCLUDE_DIRS}
        ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(030_multisampling
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(030_multisampling vert 030_shader_base.vert 030_shader_base.vert.spv)
add_shader(030_multisampling frag 030_shader_base.frag 030_shader_base.frag.spv)

add_custom_command(
        TARGET  030_multisampling POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/viking_room.png
        ${CMAKE_CURRENT_BINARY_DIR}/viking_room.png)

add_custom_command(
        TARGET  030_multisampling POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/viking_room.obj
        ${CMAKE_CURRENT_BINARY_DIR}/viking_room.obj)
