add_executable(001_setup_base-code main.cpp)

target_include_directories(001_setup_base-code
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(001_setup_base-code
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
