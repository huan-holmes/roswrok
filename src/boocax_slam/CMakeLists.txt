cmake_minimum_required(VERSION 2.8.3)
project(boocax_slam)
set(CMAKE_BUILD_TYPE Release)
#add_compile_options(-rdynamic)
#add_compile_options(-g)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    rosbag
    std_msgs
    message_generation
    tf
    tf_conversions
    geometry_msgs
    genmsg
    serial
    liblocation
    nav_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS
  geometry_msgs
  nav_msgs
  roscpp
  rospy
  rosbag
  std_msgs
  tf
  tf_conversions
  custom_sys_msgs
  sensor_msgs
  DEPENDS system_lib
)


link_directories(/usr/lib/i386-linux-gnu/ )
set(COMMON_SRC ${CMAKE_SOURCE_DIR}/custom_sys_msgs/src)
###########
## Build ##
###########

include_directories(
 include
 ${catkin_INCLUDE_DIRS}
 ${CATKIN_DEVEL_PREFIX}/include/
 ${CMAKE_SOURCE_DIR}/custom_sys_msgs/include/
 ${CMAKE_SOURCE_DIR}/boocax_common/include/
 )
link_directories(${CATKIN_DEVEL_PREFIX}/lib)
link_libraries(${CATKIN_DEVEL_PREFIX}/lib/libboocax_lidar_locate.so)
link_libraries(${CATKIN_DEVEL_PREFIX}/lib/libboocax_odom.so)
add_executable(slam_processor src/slam_processor.cpp ${COMMON_SRC}/common.cpp ${COMMON_SRC}/iniReader.cpp ${COMMON_SRC}/md5.cpp
                              src/cuwb.cpp src/pack.cpp ${COMMON_SRC}/jsoncpp.cpp ${COMMON_SRC}/cmyserial.cpp
                              ${COMMON_SRC}/lodepng.cpp src/imu_controller.cpp src/imu_data_decode.c src/packet.c
                              src/loc_based_on_odom.cpp src/loc_strategy_manager.cpp)
target_link_libraries(slam_processor ${catkin_LIBRARIES} jpeg uuid boocax_key boocax_lidar_locate boocax_odom)

add_executable(uwb_serial src/uwb_serial.cpp ${COMMON_SRC}/common.cpp ${COMMON_SRC}/iniReader.cpp ${COMMON_SRC}/cmyserial.cpp)
target_link_libraries(uwb_serial ${catkin_LIBRARIES} jpeg)
