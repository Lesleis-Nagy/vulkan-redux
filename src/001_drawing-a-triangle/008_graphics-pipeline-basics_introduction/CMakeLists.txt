add_executable(008_graphics-pipeline-basics_introduction main.cpp)

target_include_directories(008_graphics-pipeline-basics_introduction
        PUBLIC ${Vulkan_INCLUDE_DIRS})

target_link_libraries(008_graphics-pipeline-basics_introduction
        PRIVATE glm::glm glfw ${Vulkan_LIBRARIES})
