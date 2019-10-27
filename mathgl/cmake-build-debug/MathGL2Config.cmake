# - Config file for the MathGL package
# It defines the following variables
 
set(MathGL2_INCLUDE_DIRS "C:/Program Files (x86)/MathGL2/include")
set(MathGL2_LIBRARIES_DIRS "C:/Program Files (x86)/MathGL2/lib")
set(MathGL2_HAVE_QT5 "OFF")
set(MathGL2_HAVE_QT4 "OFF")
set(MathGL2_HAVE_WX "OFF")
set(MathGL2_HAVE_FLTK "OFF")
set(MathGL2_HAVE_GLUT "OFF")

# Compute paths
get_filename_component(MathGL2_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET mgl AND NOT MathGL_BINARY_DIR)
  include("${MathGL2_CMAKE_DIR}/MathGLTargets.cmake")
endif()
