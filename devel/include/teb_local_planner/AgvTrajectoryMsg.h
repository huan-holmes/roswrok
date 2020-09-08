// Generated by gencpp from file teb_local_planner/AgvTrajectoryMsg.msg
// DO NOT EDIT!


#ifndef TEB_LOCAL_PLANNER_MESSAGE_AGVTRAJECTORYMSG_H
#define TEB_LOCAL_PLANNER_MESSAGE_AGVTRAJECTORYMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <teb_local_planner/AgvLineMsg.h>

namespace teb_local_planner
{
template <class ContainerAllocator>
struct AgvTrajectoryMsg_
{
  typedef AgvTrajectoryMsg_<ContainerAllocator> Type;

  AgvTrajectoryMsg_()
    : agv_trajectory()
    , move_dir(0)  {
    }
  AgvTrajectoryMsg_(const ContainerAllocator& _alloc)
    : agv_trajectory(_alloc)
    , move_dir(0)  {
  (void)_alloc;
    }



   typedef std::vector< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >::other >  _agv_trajectory_type;
  _agv_trajectory_type agv_trajectory;

   typedef int32_t _move_dir_type;
  _move_dir_type move_dir;





  typedef boost::shared_ptr< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> const> ConstPtr;

}; // struct AgvTrajectoryMsg_

typedef ::teb_local_planner::AgvTrajectoryMsg_<std::allocator<void> > AgvTrajectoryMsg;

typedef boost::shared_ptr< ::teb_local_planner::AgvTrajectoryMsg > AgvTrajectoryMsgPtr;
typedef boost::shared_ptr< ::teb_local_planner::AgvTrajectoryMsg const> AgvTrajectoryMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace teb_local_planner

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'teb_local_planner': ['/home/boocax/roswork/src/teb/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ea844040bae943d8f96401ca7a88393";
  }

  static const char* value(const ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ea844040bae943dULL;
  static const uint64_t static_value2 = 0x8f96401ca7a88393ULL;
};

template<class ContainerAllocator>
struct DataType< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "teb_local_planner/AgvTrajectoryMsg";
  }

  static const char* value(const ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "teb_local_planner/AgvLineMsg[] agv_trajectory\n\
int32 move_dir\n\
\n\
================================================================================\n\
MSG: teb_local_planner/AgvLineMsg\n\
# The pose of the robot\n\
geometry_msgs/Pose[3] poses\n\
\n\
std_msgs/Int32 type\n\
\n\
std_msgs/Int32 path_id\n\
\n\
float64 vel\n\
\n\
int32 crossing\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: std_msgs/Int32\n\
int32 data\n\
";
  }

  static const char* value(const ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.agv_trajectory);
      stream.next(m.move_dir);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AgvTrajectoryMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::teb_local_planner::AgvTrajectoryMsg_<ContainerAllocator>& v)
  {
    s << indent << "agv_trajectory[]" << std::endl;
    for (size_t i = 0; i < v.agv_trajectory.size(); ++i)
    {
      s << indent << "  agv_trajectory[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >::stream(s, indent + "    ", v.agv_trajectory[i]);
    }
    s << indent << "move_dir: ";
    Printer<int32_t>::stream(s, indent + "  ", v.move_dir);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEB_LOCAL_PLANNER_MESSAGE_AGVTRAJECTORYMSG_H