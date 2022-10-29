add_executable(005_setup_logical-device-and-queues main.cpp)

target_include_directories(005_setup_logical-device-and-queues
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(005_setup_logical-device-and-queues
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
