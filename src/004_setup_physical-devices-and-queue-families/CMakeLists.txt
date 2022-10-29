add_executable(004_setup_physical-devices-and-queue-families main.cpp)

target_include_directories(004_setup_physical-devices-and-queue-families
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(004_setup_physical-devices-and-queue-families
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
