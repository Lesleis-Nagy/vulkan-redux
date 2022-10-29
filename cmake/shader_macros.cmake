#
# CMake utility macros to build shaders using glslc.
#

#
# Function to find the 'glslc' compiler to compile shaders.
# Running this macro should set the following CMAKE variables:
#
# GLSLC_EXECUTABLE - the full path to the glslc shader compiler.
#
macro (find_glslc_compiler)
    if (NOT glslc_compiler_FOUND)
        if (WIN32)
            message(STATUS "Attempting to find glslc on a Windows system")
            if (DEFINED ENV{VULKAN_SDK})
                # Note: since it is required that find_program finds the 
                #       executable, CMake will fail if we can't pick up the 
                #       glslc executable.
                find_program(GLSLC_EXECUTABLE
                        NAMES glslc
                        HINTS "$ENV{VULKAN_SDK}/bin"
                        REQUIRED)
                set(glslc_compiler_FOUND True)
            elseif(DEFINED ENV{GLSLC_DIR})
                # Note: since it is required that find_program finds the 
                #       executable, CMake will fail if we can't pick up the 
                #       glslc executable.
                find_program(GLSLC_EXECUTABLE
                             NAMES glslc
                             HINTS "$ENV{GLSLC_DIR}/bin"
                             REQUIRED)
                set(glslc_compiler_FOUND True)
            else ()
                find_program(GLSLC_EXECUTABLE
                             NAMES glslc
                             HINTS "/usr/local/bin"
                             REQUIRED)
                set(glslc_compiler_FOUND True)
            endif()
        else()
            message(STATUS "Attempting to find glslc on a Unix system")
            if(DEFINED ENV{GLSLC_DIR})
                # Note: since it is required that find_program finds the 
                #       executable, CMake will fail if we can't pick up the 
                #       glslc executable.
                find_program(GLSLC_EXECUTABLE
                             NAMES glslc
                             HINTS "$ENV{GLSLC_DIR}/bin"
                             REQUIRED)
                set(glslc_compiler_FOUND True)
            else ()
                # Note: since it is required that find_program finds the 
                #       executable, CMake will fail if we can't pick up the 
                #       glslc executable.
                find_program(GLSLC_EXECUTABLE
                             NAMES glslc
                             HINTS "/usr/local/bin"
                             REQUIRED)
                set(glslc_compiler_FOUND True)
            endif()
        endif()
    endif()
    if (NOT glslc_compiler_FOUND)
        message(FATAL_ERROR "Could not find glslc compiler")
    endif()
endmacro()

#
# Check that GLSLC_EXECUTABLE variable is set.
#
if (DEFINED GLSLC_EXECUTABLE)
    # If `GLSLC_EXECUTABLE` is unset, then attempt to find it.
    find_glslc_compiler()
endif()

#
# Macro to add a shader dependency to a target.
#
# Inputs:
#   target     - the target to which the shader belongs.
#   stage      - the shader stage, valid values are: 
#                   vertex, vert, fragment, frag, tesscontrol, tesc, tesseval, 
#                   tese, geometry, geom, compute, and comp. .
#   shader_src - the shader source file name.
#   shader_out - the shader compiled output name.
#
macro (add_shader target stage shader_src shader_out)
    message(STATUS
            "Compile shader '${CMAKE_CURRENT_SOURCE_DIR}/${shader_src}' to '${CMAKE_CURRENT_BINARY_DIR}/${shader_out}'")

    add_custom_target(${shader_out}
            DEPENDS ${shader_src}
            COMMAND ${GLSLC_EXECUTABLE} -fshader-stage=${stage} "${CMAKE_CURRENT_SOURCE_DIR}/${shader_src}" -o ${shader_out})

    add_dependencies(${target} ${shader_out})
endmacro()
