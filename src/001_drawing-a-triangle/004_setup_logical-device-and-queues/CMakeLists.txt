add_executable(004_setup_logical-device-and-queues main.cpp)

target_include_directories(004_setup_logical-device-and-queues
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(004_setup_logical-device-and-queues
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
