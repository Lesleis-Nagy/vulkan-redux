add_executable(018_swap-chain-recreation main.cpp)

target_include_directories(018_swap-chain-recreation
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(018_swap-chain-recreation
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(018_swap-chain-recreation vert 018_shader_base.vert 018_shader_base.vert.spv)
add_shader(018_swap-chain-recreation frag 018_shader_base.frag 018_shader_base.frag.spv)
