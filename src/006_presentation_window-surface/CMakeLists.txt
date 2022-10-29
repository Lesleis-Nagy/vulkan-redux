add_executable(006_presentation_window-surface main.cpp)

target_include_directories(006_presentation_window-surface
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(006_presentation_window-surface
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
