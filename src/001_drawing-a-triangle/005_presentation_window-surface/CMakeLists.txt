add_executable(005_presentation_window-surface main.cpp)

target_include_directories(005_presentation_window-surface
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(005_presentation_window-surface
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
