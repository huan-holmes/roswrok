cmake_minimum_required(VERSION 2.8.3)
project(agv_serial_screen)
#set(CMAKE_BUILD_TYPE Debug)
#add_compile_options(-rdynamic)
#add_compile_options(-g)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  serial
  std_msgs
  message_generation
  geometry_msgs
)

IF(NOT MSVC)
  include(CheckCXXCompilerFlag)
  CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
  CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
else()
  message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support which is required 
  by linked third party packages starting from ROS Jade. Ignore this message for ROS Indigo.")
endif()
endif()

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS  roscpp  tf
  )

###########
## Build ##
###########

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${CMAKE_SOURCE_DIR}/custom_sys_msgs/include/
  ${CATKIN_DEVEL_PREFIX}/include
)

set(COMMON_SRC ${CMAKE_SOURCE_DIR}/custom_sys_msgs/src)

link_directories(/usr/lib/i386-linux-gnu/ )
SET(SRC_LIST
    ${PROJECT_SOURCE_DIR}/src/cmd_process.cpp
    ${PROJECT_SOURCE_DIR}/src/agv_screen_serial.cpp
    ${PROJECT_SOURCE_DIR}/src/cmd_queue.c
    ${PROJECT_SOURCE_DIR}/src/serial_tool.cpp
    ${COMMON_SRC}/iniReader.cpp
    ${PROJECT_SOURCE_DIR}/src/page_manager.cpp
    ${PROJECT_SOURCE_DIR}/src/agv_screen_parent_page.cpp
    ${PROJECT_SOURCE_DIR}/src/main_page.cpp
    ${PROJECT_SOURCE_DIR}/src/agv_send_out_page.cpp
    ${PROJECT_SOURCE_DIR}/src/agv_upload_table_page.cpp
    ${PROJECT_SOURCE_DIR}/src/agv_parking_page.cpp
    ${PROJECT_SOURCE_DIR}/src/agv_assemble_page.cpp
    ${PROJECT_SOURCE_DIR}/src/aoa_task_page.cpp
    ${PROJECT_SOURCE_DIR}/src/aoa_task_status_page.cpp
    ${PROJECT_SOURCE_DIR}/src/agv_task_status_page.cpp
    ${PROJECT_SOURCE_DIR}/src/standby_task_status_page.cpp
    ${PROJECT_SOURCE_DIR}/src/vehicle_info_page.cpp
    ${PROJECT_SOURCE_DIR}/src/auto_charge_page.cpp
    ${PROJECT_SOURCE_DIR}/src/wait_to_send_task_page.cpp
    ${PROJECT_SOURCE_DIR}/src/auto_charge_status_page.cpp
    ${PROJECT_SOURCE_DIR}/src/sensor_info_page.cpp
    ${PROJECT_SOURCE_DIR}/src/auto_charge_status_page.cpp
    ${PROJECT_SOURCE_DIR}/src/edit_robot_name_page.cpp
    ${PROJECT_SOURCE_DIR}/src/edit_wifi_page.cpp
    ${PROJECT_SOURCE_DIR}/src/observer.cpp
)
#file(GLOB_RECURSE SRC_LIST ${PROJECT_SOURCE_DIR}/src/*.cpp)
add_executable(${PROJECT_NAME} ${SRC_LIST})
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES})

#add_executable(test_node ${PROJECT_SOURCE_DIR}/src/agv_serial_screen_test_node.cpp)
#target_link_libraries(test_node ${catkin_LIBRARIES})
