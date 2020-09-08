// Generated by gencpp from file teb_local_planner/AgvLineMsg.msg
// DO NOT EDIT!


#ifndef TEB_LOCAL_PLANNER_MESSAGE_AGVLINEMSG_H
#define TEB_LOCAL_PLANNER_MESSAGE_AGVLINEMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Int32.h>

namespace teb_local_planner
{
template <class ContainerAllocator>
struct AgvLineMsg_
{
  typedef AgvLineMsg_<ContainerAllocator> Type;

  AgvLineMsg_()
    : poses()
    , type()
    , path_id()
    , vel(0.0)
    , crossing(0)  {
    }
  AgvLineMsg_(const ContainerAllocator& _alloc)
    : poses()
    , type(_alloc)
    , path_id(_alloc)
    , vel(0.0)
    , crossing(0)  {
  (void)_alloc;
      poses.assign( ::geometry_msgs::Pose_<ContainerAllocator> (_alloc));
  }



   typedef boost::array< ::geometry_msgs::Pose_<ContainerAllocator> , 3>  _poses_type;
  _poses_type poses;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _type_type;
  _type_type type;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _path_id_type;
  _path_id_type path_id;

   typedef double _vel_type;
  _vel_type vel;

   typedef int32_t _crossing_type;
  _crossing_type crossing;





  typedef boost::shared_ptr< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> const> ConstPtr;

}; // struct AgvLineMsg_

typedef ::teb_local_planner::AgvLineMsg_<std::allocator<void> > AgvLineMsg;

typedef boost::shared_ptr< ::teb_local_planner::AgvLineMsg > AgvLineMsgPtr;
typedef boost::shared_ptr< ::teb_local_planner::AgvLineMsg const> AgvLineMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::teb_local_planner::AgvLineMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace teb_local_planner

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'teb_local_planner': ['/home/boocax/roswork/src/teb/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a938cc1a16df264a8bdf537bad11201";
  }

  static const char* value(const ::teb_local_planner::AgvLineMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a938cc1a16df264ULL;
  static const uint64_t static_value2 = 0xa8bdf537bad11201ULL;
};

template<class ContainerAllocator>
struct DataType< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "teb_local_planner/AgvLineMsg";
  }

  static const char* value(const ::teb_local_planner::AgvLineMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The pose of the robot\n\
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

  static const char* value(const ::teb_local_planner::AgvLineMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.poses);
      stream.next(m.type);
      stream.next(m.path_id);
      stream.next(m.vel);
      stream.next(m.crossing);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AgvLineMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::teb_local_planner::AgvLineMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::teb_local_planner::AgvLineMsg_<ContainerAllocator>& v)
  {
    s << indent << "poses[]" << std::endl;
    for (size_t i = 0; i < v.poses.size(); ++i)
    {
      s << indent << "  poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.poses[i]);
    }
    s << indent << "type: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.type);
    s << indent << "path_id: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.path_id);
    s << indent << "vel: ";
    Printer<double>::stream(s, indent + "  ", v.vel);
    s << indent << "crossing: ";
    Printer<int32_t>::stream(s, indent + "  ", v.crossing);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEB_LOCAL_PLANNER_MESSAGE_AGVLINEMSG_H