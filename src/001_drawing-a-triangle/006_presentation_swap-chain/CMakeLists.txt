add_executable(006_presentation_swap-chain main.cpp)

target_include_directories(006_presentation_swap-chain
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(006_presentation_swap-chain
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
