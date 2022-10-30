add_executable(002_setup_instance main.cpp)

target_include_directories(002_setup_instance
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(002_setup_instance
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
