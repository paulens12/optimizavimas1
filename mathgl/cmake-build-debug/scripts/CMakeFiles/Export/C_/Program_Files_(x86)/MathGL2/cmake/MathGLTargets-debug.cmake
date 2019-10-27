#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mgl" for configuration "Debug"
set_property(TARGET mgl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mgl PROPERTIES
  IMPORTED_IMPLIB_DEBUG "C:/Program Files (x86)/MathGL2/lib/libmgl.dll.a"
  IMPORTED_LOCATION_DEBUG "C:/Program Files (x86)/MathGL2/bin/libmgl.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS mgl )
list(APPEND _IMPORT_CHECK_FILES_FOR_mgl "C:/Program Files (x86)/MathGL2/lib/libmgl.dll.a" "C:/Program Files (x86)/MathGL2/bin/libmgl.dll" )

# Import target "mgl-static" for configuration "Debug"
set_property(TARGET mgl-static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mgl-static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "C:/Program Files (x86)/MathGL2/lib/libmgl.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS mgl-static )
list(APPEND _IMPORT_CHECK_FILES_FOR_mgl-static "C:/Program Files (x86)/MathGL2/lib/libmgl.a" )

# Import target "mgltask" for configuration "Debug"
set_property(TARGET mgltask APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mgltask PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/Program Files (x86)/MathGL2/bin/mgltask.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS mgltask )
list(APPEND _IMPORT_CHECK_FILES_FOR_mgltask "C:/Program Files (x86)/MathGL2/bin/mgltask.exe" )

# Import target "mglconv" for configuration "Debug"
set_property(TARGET mglconv APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mglconv PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/Program Files (x86)/MathGL2/bin/mglconv.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS mglconv )
list(APPEND _IMPORT_CHECK_FILES_FOR_mglconv "C:/Program Files (x86)/MathGL2/bin/mglconv.exe" )

# Import target "mgl.cgi" for configuration "Debug"
set_property(TARGET mgl.cgi APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mgl.cgi PROPERTIES
  IMPORTED_LOCATION_DEBUG "C:/Program Files (x86)/MathGL2/lib/cgi-bin/mgl.cgi.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS mgl.cgi )
list(APPEND _IMPORT_CHECK_FILES_FOR_mgl.cgi "C:/Program Files (x86)/MathGL2/lib/cgi-bin/mgl.cgi.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
