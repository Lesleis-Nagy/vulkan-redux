add_executable(007_presentation_swap-chain main.cpp)

target_include_directories(007_presentation_swap-chain
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(007_presentation_swap-chain
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
