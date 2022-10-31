add_executable(008_presentation_image-views main.cpp)

target_include_directories(008_presentation_image-views
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(008_presentation_image-views
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
