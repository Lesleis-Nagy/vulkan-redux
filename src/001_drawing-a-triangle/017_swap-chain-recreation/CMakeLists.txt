add_executable(017_swap-chain-recreation main.cpp)

target_include_directories(017_swap-chain-recreation
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(017_swap-chain-recreation
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})

add_shader(017_swap-chain-recreation vert 017_shader_base.vert 017_shader_base.vert.spv)
add_shader(017_swap-chain-recreation frag 017_shader_base.frag 017_shader_base.frag.spv)
