add_executable(003_setup_physical-devices-and-queue-families main.cpp)

target_include_directories(003_setup_physical-devices-and-queue-families
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(003_setup_physical-devices-and-queue-families
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
