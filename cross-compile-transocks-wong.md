Steps:
1. Set openwrt environments.
2. Patch CMakeList.txt

``` diff
diff --git a/CMakeLists.txt b/CMakeLists.txt
index 001ab6d..b539ffa 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -1,4 +1,9 @@
 cmake_minimum_required(VERSION 3.7.2)
+SET(CMAKE_CXX_COMPILER "mips-openwrt-linux-g++")
+
+SET(CMAKE_C_COMPILER "mips-openwrt-linux-gcc")
+SET (CMAKE_C_COMPILER_WORKS 1)
+SET (CMAKE_CXX_COMPILER_WORKS 1)
 project(transocks-wong)
 set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

@@ -14,10 +19,10 @@ find_package(Libevent2 REQUIRED)
 include_directories(${LIBEVENT2_INCLUDE_DIR})
 target_link_libraries(transocks-wong ${LIBEVENT2_LIBRARIES})

-find_library(LIBRT rt)
-if(LIBRT)
-    target_link_libraries(transocks-wong ${LIBRT})
-endif()
+#find_library(LIBRT rt)
+#if(LIBRT)
+#    target_link_libraries(transocks-wong ${LIBRT})
+#endif()

 option(ENABLE_DEBUG "Build as DEBUG mode" OFF)
 if(ENABLE_DEBUG)
```

3. Make
```
mkdir build
cd build
cmake -DLIBEVENT2_LIBRARIES=/storage/build/libevent/.libs/ -DLIBEVENT2_INCLUDE_DIR=/storage/build/libevent/include/ ../
make
```

