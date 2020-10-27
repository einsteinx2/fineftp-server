#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fineftp::server" for configuration "MinSizeRel"
set_property(TARGET fineftp::server APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(fineftp::server PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/libfineftp-server.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS fineftp::server )
list(APPEND _IMPORT_CHECK_FILES_FOR_fineftp::server "${_IMPORT_PREFIX}/lib/libfineftp-server.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
