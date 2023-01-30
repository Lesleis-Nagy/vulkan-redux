add_executable(002_setup_validation-layers main.cpp)

target_include_directories(002_setup_validation-layers
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(002_setup_validation-layers
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
