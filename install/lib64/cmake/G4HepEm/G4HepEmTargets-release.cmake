#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "G4HepEm::g4HepEmData" for configuration "Release"
set_property(TARGET G4HepEm::g4HepEmData APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(G4HepEm::g4HepEmData PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libg4HepEmData.so"
  IMPORTED_SONAME_RELEASE "libg4HepEmData.so"
  )

list(APPEND _cmake_import_check_targets G4HepEm::g4HepEmData )
list(APPEND _cmake_import_check_files_for_G4HepEm::g4HepEmData "${_IMPORT_PREFIX}/lib64/libg4HepEmData.so" )

# Import target "G4HepEm::g4HepEmDataJsonIO" for configuration "Release"
set_property(TARGET G4HepEm::g4HepEmDataJsonIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(G4HepEm::g4HepEmDataJsonIO PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libg4HepEmDataJsonIO.so"
  IMPORTED_SONAME_RELEASE "libg4HepEmDataJsonIO.so"
  )

list(APPEND _cmake_import_check_targets G4HepEm::g4HepEmDataJsonIO )
list(APPEND _cmake_import_check_files_for_G4HepEm::g4HepEmDataJsonIO "${_IMPORT_PREFIX}/lib64/libg4HepEmDataJsonIO.so" )

# Import target "G4HepEm::g4HepEmRun" for configuration "Release"
set_property(TARGET G4HepEm::g4HepEmRun APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(G4HepEm::g4HepEmRun PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libg4HepEmRun.so"
  IMPORTED_SONAME_RELEASE "libg4HepEmRun.so"
  )

list(APPEND _cmake_import_check_targets G4HepEm::g4HepEmRun )
list(APPEND _cmake_import_check_files_for_G4HepEm::g4HepEmRun "${_IMPORT_PREFIX}/lib64/libg4HepEmRun.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
