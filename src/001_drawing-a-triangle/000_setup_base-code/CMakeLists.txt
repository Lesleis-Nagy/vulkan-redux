add_executable(000_setup_base-code main.cpp)

target_include_directories(000_setup_base-code
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(000_setup_base-code
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
