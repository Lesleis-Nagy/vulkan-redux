add_executable(028_loading-models main.cpp)

target_include_directories(028_loading-models
        PUBLIC ${Vulkan_INCLUDE_DIRS}
        ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(028_loading-models
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(028_loading-models vert 028_shader_base.vert 028_shader_base.vert.spv)
add_shader(028_loading-models frag 028_shader_base.frag 028_shader_base.frag.spv)

add_custom_command(
        TARGET  028_loading-models POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/viking_room.png
        ${CMAKE_CURRENT_BINARY_DIR}/viking_room.png)

add_custom_command(
        TARGET  028_loading-models POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/viking_room.obj
        ${CMAKE_CURRENT_BINARY_DIR}/viking_room.obj)
