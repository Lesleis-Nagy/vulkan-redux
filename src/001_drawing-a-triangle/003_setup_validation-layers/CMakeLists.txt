add_executable(003_setup_validation-layers main.cpp)

target_include_directories(003_setup_validation-layers
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(003_setup_validation-layers
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
