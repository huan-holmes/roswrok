cmake_minimum_required(VERSION 2.8.3)
project(pose_save)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)
set(CMAKE_CXX_FLAGS "-std=c++11")
## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)
find_package(Pangolin REQUIRED)

 generate_messages(
   DEPENDENCIES
   std_msgs
   pose_save
 )


catkin_package(
  INCLUDE_DIRS include
  LIBRARIES pose_save
  CATKIN_DEPENDS roscpp rospy std_msgs
)


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${Pangolin_INCLUDE_DIRS}
  "/usr/include/eigen3"
)
include_directories( "/usr/include/eigen3" )
include_directories( "/home/boocax/roswork/devel/include" )

add_executable(pose_save src/pose_save.cpp)
#add_dependencies(talker_fake ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(pose_save ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries( pose_save ${catkin_LIBRARIES} ${Pangolin_LIBRARIES})


add_executable(ar_view src/ar_view.cpp)
#add_dependencies(talker_fake ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(ar_view ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries( ar_view ${catkin_LIBRARIES} ${Pangolin_LIBRARIES})




