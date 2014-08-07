# generated by Buildyard, do not edit.

include(System)
list(APPEND FIND_PACKAGES_DEFINES ${SYSTEM})
find_package(PkgConfig)

set(ENV{PKG_CONFIG_PATH} "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig:$ENV{PKG_CONFIG_PATH}")
if(PKG_CONFIG_EXECUTABLE)
  find_package(hwloc 1.3)
  if((NOT hwloc_FOUND) AND (NOT HWLOC_FOUND))
    pkg_check_modules(hwloc hwloc>=1.3)
  endif()
else()
  find_package(hwloc 1.3 )
endif()

if(PKG_CONFIG_EXECUTABLE)
  find_package(DNSSD )
  if((NOT DNSSD_FOUND) AND (NOT DNSSD_FOUND))
    pkg_check_modules(DNSSD DNSSD)
  endif()
else()
  find_package(DNSSD  )
endif()

if(PKG_CONFIG_EXECUTABLE)
  find_package(LibJpegTurbo 1.2.1)
  if((NOT LibJpegTurbo_FOUND) AND (NOT LIBJPEGTURBO_FOUND))
    pkg_check_modules(LibJpegTurbo LibJpegTurbo>=1.2.1)
  endif()
else()
  find_package(LibJpegTurbo 1.2.1 )
endif()

if(PKG_CONFIG_EXECUTABLE)
  find_package(OpenMP )
  if((NOT OpenMP_FOUND) AND (NOT OPENMP_FOUND))
    pkg_check_modules(OpenMP OpenMP)
  endif()
else()
  find_package(OpenMP  )
endif()

if(PKG_CONFIG_EXECUTABLE)
  find_package(MPI )
  if((NOT MPI_FOUND) AND (NOT MPI_FOUND))
    pkg_check_modules(MPI MPI)
  endif()
else()
  find_package(MPI  )
endif()

if(PKG_CONFIG_EXECUTABLE)
  find_package(Boost 1.41.0 COMPONENTS regex serialization filesystem system)
  if((NOT Boost_FOUND) AND (NOT BOOST_FOUND))
    pkg_check_modules(Boost Boost>=1.41.0)
  endif()
  if((NOT Boost_FOUND) AND (NOT BOOST_FOUND))
    message(FATAL_ERROR "Could not find Boost COMPONENTS regex serialization filesystem system")
  endif()
else()
  find_package(Boost 1.41.0  REQUIRED regex serialization filesystem system)
endif()


if(EXISTS ${CMAKE_SOURCE_DIR}/CMake/FindPackagesPost.cmake)
  include(${CMAKE_SOURCE_DIR}/CMake/FindPackagesPost.cmake)
endif()

if(HWLOC_FOUND)
  set(hwloc_name HWLOC)
  set(hwloc_FOUND TRUE)
elseif(hwloc_FOUND)
  set(hwloc_name hwloc)
  set(HWLOC_FOUND TRUE)
endif()
if(hwloc_name)
  list(APPEND FIND_PACKAGES_DEFINES LUNCHBOX_USE_HWLOC)
  set(FIND_PACKAGES_FOUND "${FIND_PACKAGES_FOUND} hwloc")
  link_directories(${${hwloc_name}_LIBRARY_DIRS})
  if(NOT "${${hwloc_name}_INCLUDE_DIRS}" MATCHES "-NOTFOUND")
    include_directories(${${hwloc_name}_INCLUDE_DIRS})
  endif()
endif()

if(DNSSD_FOUND)
  set(DNSSD_name DNSSD)
  set(DNSSD_FOUND TRUE)
elseif(DNSSD_FOUND)
  set(DNSSD_name DNSSD)
  set(DNSSD_FOUND TRUE)
endif()
if(DNSSD_name)
  list(APPEND FIND_PACKAGES_DEFINES LUNCHBOX_USE_DNSSD)
  set(FIND_PACKAGES_FOUND "${FIND_PACKAGES_FOUND} DNSSD")
  link_directories(${${DNSSD_name}_LIBRARY_DIRS})
  if(NOT "${${DNSSD_name}_INCLUDE_DIRS}" MATCHES "-NOTFOUND")
    include_directories(${${DNSSD_name}_INCLUDE_DIRS})
  endif()
endif()

if(LIBJPEGTURBO_FOUND)
  set(LibJpegTurbo_name LIBJPEGTURBO)
  set(LibJpegTurbo_FOUND TRUE)
elseif(LibJpegTurbo_FOUND)
  set(LibJpegTurbo_name LibJpegTurbo)
  set(LIBJPEGTURBO_FOUND TRUE)
endif()
if(LibJpegTurbo_name)
  list(APPEND FIND_PACKAGES_DEFINES LUNCHBOX_USE_LIBJPEGTURBO)
  set(FIND_PACKAGES_FOUND "${FIND_PACKAGES_FOUND} LibJpegTurbo")
  link_directories(${${LibJpegTurbo_name}_LIBRARY_DIRS})
  if(NOT "${${LibJpegTurbo_name}_INCLUDE_DIRS}" MATCHES "-NOTFOUND")
    include_directories(${${LibJpegTurbo_name}_INCLUDE_DIRS})
  endif()
endif()

if(OPENMP_FOUND)
  set(OpenMP_name OPENMP)
  set(OpenMP_FOUND TRUE)
elseif(OpenMP_FOUND)
  set(OpenMP_name OpenMP)
  set(OPENMP_FOUND TRUE)
endif()
if(OpenMP_name)
  list(APPEND FIND_PACKAGES_DEFINES LUNCHBOX_USE_OPENMP)
  set(FIND_PACKAGES_FOUND "${FIND_PACKAGES_FOUND} OpenMP")
  link_directories(${${OpenMP_name}_LIBRARY_DIRS})
  if(NOT "${${OpenMP_name}_INCLUDE_DIRS}" MATCHES "-NOTFOUND")
    include_directories(${${OpenMP_name}_INCLUDE_DIRS})
  endif()
endif()

if(MPI_FOUND)
  set(MPI_name MPI)
  set(MPI_FOUND TRUE)
elseif(MPI_FOUND)
  set(MPI_name MPI)
  set(MPI_FOUND TRUE)
endif()
if(MPI_name)
  list(APPEND FIND_PACKAGES_DEFINES LUNCHBOX_USE_MPI)
  set(FIND_PACKAGES_FOUND "${FIND_PACKAGES_FOUND} MPI")
  link_directories(${${MPI_name}_LIBRARY_DIRS})
  if(NOT "${${MPI_name}_INCLUDE_DIRS}" MATCHES "-NOTFOUND")
    include_directories(SYSTEM ${MPI_C_INCLUDE_PATH} ${${MPI_name}_INCLUDE_DIRS})
  endif()
endif()

if(BOOST_FOUND)
  set(Boost_name BOOST)
  set(Boost_FOUND TRUE)
elseif(Boost_FOUND)
  set(Boost_name Boost)
  set(BOOST_FOUND TRUE)
endif()
if(Boost_name)
  list(APPEND FIND_PACKAGES_DEFINES LUNCHBOX_USE_BOOST)
  set(FIND_PACKAGES_FOUND "${FIND_PACKAGES_FOUND} Boost")
  link_directories(${${Boost_name}_LIBRARY_DIRS})
  if(NOT "${${Boost_name}_INCLUDE_DIRS}" MATCHES "-NOTFOUND")
    include_directories(SYSTEM ${${Boost_name}_INCLUDE_DIRS})
  endif()
endif()

set(LUNCHBOX_BUILD_DEBS autoconf;automake;cmake;doxygen;git;git-review;libavahi-compat-libdnssd-dev;libboost-filesystem-dev;libboost-regex-dev;libboost-serialization-dev;libboost-system-dev;libhwloc-dev;libjpeg-turbo8-dev;libturbojpeg;pkg-config;subversion)

set(LUNCHBOX_DEPENDS hwloc;DNSSD;LibJpegTurbo;OpenMP;MPI;Boost)

# Write defines.h and options.cmake
if(NOT PROJECT_INCLUDE_NAME)
  message(WARNING "PROJECT_INCLUDE_NAME not set, old or missing Common.cmake?")
  set(PROJECT_INCLUDE_NAME ${PROJECT_NAME})
endif()
if(NOT OPTIONS_CMAKE)
  set(OPTIONS_CMAKE ${CMAKE_CURRENT_BINARY_DIR}/options.cmake)
endif()
set(DEFINES_FILE "${CMAKE_CURRENT_BINARY_DIR}/include/${PROJECT_INCLUDE_NAME}/defines${SYSTEM}.h")
list(APPEND COMMON_INCLUDES ${DEFINES_FILE})
set(DEFINES_FILE_IN ${DEFINES_FILE}.in)
file(WRITE ${DEFINES_FILE_IN}
  "// generated by CMake/FindPackages.cmake, do not edit.\n\n"
  "#ifndef ${PROJECT_NAME}_DEFINES_${SYSTEM}_H\n"
  "#define ${PROJECT_NAME}_DEFINES_${SYSTEM}_H\n\n")
file(WRITE ${OPTIONS_CMAKE} "# Optional modules enabled during build\n"
  "list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})\n")
foreach(DEF ${FIND_PACKAGES_DEFINES})
  add_definitions(-D${DEF}=1)
  file(APPEND ${DEFINES_FILE_IN}
  "#ifndef ${DEF}\n"
  "#  define ${DEF} 1\n"
  "#endif\n")
if(NOT DEF STREQUAL SYSTEM)
  file(APPEND ${OPTIONS_CMAKE} "set(${DEF} ON)\n")
endif()
endforeach()
if(CMAKE_MODULE_INSTALL_PATH)
  install(FILES ${OPTIONS_CMAKE} DESTINATION ${CMAKE_MODULE_INSTALL_PATH}
    COMPONENT dev)
else()
  message(WARNING "CMAKE_MODULE_INSTALL_PATH not set, old or missing Common.cmake?")
endif()
file(APPEND ${DEFINES_FILE_IN}
  "\n#endif\n")

include(UpdateFile)
configure_file(${DEFINES_FILE_IN} ${DEFINES_FILE} COPYONLY)
if(Boost_FOUND) # another WAR for broken boost stuff...
  set(Boost_VERSION ${Boost_MAJOR_VERSION}.${Boost_MINOR_VERSION}.${Boost_SUBMINOR_VERSION})
endif()
if(CUDA_FOUND)
  string(REPLACE "-std=c++11" "" CUDA_HOST_FLAGS "${CUDA_HOST_FLAGS}")
  string(REPLACE "-std=c++0x" "" CUDA_HOST_FLAGS "${CUDA_HOST_FLAGS}")
endif()
if(OPENMP_FOUND)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
endif()
if(QT4_FOUND)
  if(WIN32)
    set(QT_USE_QTMAIN TRUE)
  endif()
  # Configure a copy of the 'UseQt4.cmake' system file.
  if(NOT EXISTS ${QT_USE_FILE})
    message(WARNING "Can't find QT_USE_FILE!")
  else()
    set(_customUseQt4File "${CMAKE_CURRENT_BINARY_DIR}/UseQt4.cmake")
    file(READ ${QT_USE_FILE} content)
    # Change all include_directories() to use the SYSTEM option
    string(REPLACE "include_directories(" "include_directories(SYSTEM " content ${content})
    string(REPLACE "INCLUDE_DIRECTORIES(" "INCLUDE_DIRECTORIES(SYSTEM " content ${content})
    file(WRITE ${_customUseQt4File} ${content})
    set(QT_USE_FILE ${_customUseQt4File})
    include(${QT_USE_FILE})
  endif()
endif()
if(FIND_PACKAGES_FOUND)
  if(MSVC)
    message(STATUS "Configured with ${FIND_PACKAGES_FOUND}")
  else()
    message(STATUS "Configured with ${CMAKE_BUILD_TYPE}${FIND_PACKAGES_FOUND}")
  endif()
endif()
