// Generated by gencpp from file custom_sys_msgs/SetPosLoc.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_SETPOSLOC_H
#define CUSTOM_SYS_MSGS_MESSAGE_SETPOSLOC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace custom_sys_msgs
{
template <class ContainerAllocator>
struct SetPosLoc_
{
  typedef SetPosLoc_<ContainerAllocator> Type;

  SetPosLoc_()
    : pose()
    , search_dist(0.0)
    , search_yaw(0.0)  {
    }
  SetPosLoc_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , search_dist(0.0)
    , search_yaw(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef double _search_dist_type;
  _search_dist_type search_dist;

   typedef double _search_yaw_type;
  _search_yaw_type search_yaw;





  typedef boost::shared_ptr< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> const> ConstPtr;

}; // struct SetPosLoc_

typedef ::custom_sys_msgs::SetPosLoc_<std::allocator<void> > SetPosLoc;

typedef boost::shared_ptr< ::custom_sys_msgs::SetPosLoc > SetPosLocPtr;
typedef boost::shared_ptr< ::custom_sys_msgs::SetPosLoc const> SetPosLocConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_sys_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'custom_sys_msgs': ['/home/boocax/roswork/src/custom_sys_msgs/msg', '/home/boocax/roswork/devel/share/custom_sys_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "78c9abe59b92be81b769bcaf9d65589c";
  }

  static const char* value(const ::custom_sys_msgs::SetPosLoc_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x78c9abe59b92be81ULL;
  static const uint64_t static_value2 = 0xb769bcaf9d65589cULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/SetPosLoc";
  }

  static const char* value(const ::custom_sys_msgs::SetPosLoc_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose pose\n\
float64 search_dist\n\
float64 search_yaw\n\
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
";
  }

  static const char* value(const ::custom_sys_msgs::SetPosLoc_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.search_dist);
      stream.next(m.search_yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPosLoc_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::SetPosLoc_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::SetPosLoc_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "search_dist: ";
    Printer<double>::stream(s, indent + "  ", v.search_dist);
    s << indent << "search_yaw: ";
    Printer<double>::stream(s, indent + "  ", v.search_yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_SETPOSLOC_H