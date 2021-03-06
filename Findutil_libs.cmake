#
# Copyright 2019, Data61, CSIRO (ABN 41 687 119 230)
#
# SPDX-License-Identifier: BSD-2-Clause
#

set(UTIL_LIBS_DIR "${CMAKE_CURRENT_LIST_DIR}" CACHE STRING "")
set(LWIP_HELPERS "${CMAKE_CURRENT_LIST_DIR}/liblwip/lwip_helpers.cmake" CACHE STRING "")
set(
    PLATSUPPORT_HELPERS "${CMAKE_CURRENT_LIST_DIR}/libplatsupport/tools/helpers.cmake"
    CACHE STRING ""
)
mark_as_advanced(UTIL_LIBS_DIR LWIP_HELPERS PLATSUPPORT_HELPERS)

macro(util_libs_import_libraries)
    add_subdirectory(${UTIL_LIBS_DIR} util_libs)
endmacro()

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(
    util_libs
    DEFAULT_MSG
    UTIL_LIBS_DIR
    LWIP_HELPERS
    PLATSUPPORT_HELPERS
)
