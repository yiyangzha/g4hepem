##
## Simple CMake configuration file for the G4HepEm extensions
##


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was G4HepEmConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

# - Project properties
set_and_check(G4HepEm_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include/G4HepEm")


# - Project dependencies
include(CMakeFindDependencyMacro)

set(G4HepEm_geant4_FOUND OFF)
if(G4HepEm_geant4_FOUND)
  find_dependency(Geant4  REQUIRED)
endif()

set(G4HepEm_codi_forward yes)
if(G4HepEm_codi_forward)
  message(STATUS "G4HepEm has been built with forward-mode AD support using CoDiPack, thus load CoDiPack.")
  find_dependency(CoDiPack REQUIRED)
endif()
set(G4HepEm_codi_reverse OFF)
if(G4HepEm_codi_reverse)
  message(STATUS "G4HepEm has been built with reverse-mode AD support using CoDiPack, thus load CoDiPack.")
  find_dependency(CoDiPack REQUIRED)
endif()

# Direct CUDA deps to be determined, but should be handled by
# target properties (remains to be seen if we need find_dependency on CUDA Toolkit
# and to transport CUDA architecture flags)
set(G4HepEm_cuda_FOUND OFF)

# - Project targets
include(${CMAKE_CURRENT_LIST_DIR}/G4HepEmTargets.cmake)

# - TEMPORARY back compatibility
set(G4HepEm_LIBRARIES
  G4HepEm::g4HepEmData
  G4HepEm::g4HepEmRun)
if(G4HepEm_geant4_FOUND)
  list(APPEND G4HepEm_LIBRARIES G4HepEm::g4HepEmInit G4HepEm::g4HepEm)
endif()

# - Requested component check
check_required_components(G4HepEm)
