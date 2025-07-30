set(CMAKE_BUILD_TYPE Release)

# Compiler options
set(CMAKE_CXX_COMPILER ${CMAKE_CURRENT_LIST_DIR}/../../../vendor/kokkos/bin/nvcc_wrapper)
set(CMAKE_CXX_EXTENSIONS OFF) # Avoid a Kokkos warning that will force if to OFF anyway when compiling with nvcc
set(CMAKE_CXX_FLAGS_INIT "-Wall -Wno-sign-compare --Werror cross-execution-space-call -Xcudafe --diag_suppress=unsigned_compare_with_zero -Xcudafe --diag_suppress=integer_sign_change")

# Kokkos options
set(Kokkos_ENABLE_SERIAL ON CACHE BOOL "Allow serial code to run" FORCE)
set(Kokkos_ENABLE_CUDA ON CACHE BOOL "Activate GPU usage via cuda" FORCE)
set(Kokkos_ENABLE_CUDA_CONSTEXPR ON CACHE BOOL "" FORCE )
set(Kokkos_ENABLE_CUDA_RELOCATABLE_DEVICE_CODE ON CACHE BOOL "" FORCE)
set(Kokkos_ARCH_HOPPER90 ON CACHE BOOL "Indicate that the GPU architecture is H100" FORCE)

set(Kokkos_ENABLE_DEPRECATED_CODE_4 OFF CACHE BOOL "" FORCE)
