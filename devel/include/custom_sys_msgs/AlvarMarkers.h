// Generated by gencpp from file custom_sys_msgs/AlvarMarkers.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_ALVARMARKERS_H
#define CUSTOM_SYS_MSGS_MESSAGE_ALVARMARKERS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <custom_sys_msgs/AlvarMarker.h>

namespace custom_sys_msgs
{
template <class ContainerAllocator>
struct AlvarMarkers_
{
  typedef AlvarMarkers_<ContainerAllocator> Type;

  AlvarMarkers_()
    : header()
    , rt(false)
    , makers()  {
    }
  AlvarMarkers_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , rt(false)
    , makers(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _rt_type;
  _rt_type rt;

   typedef std::vector< ::custom_sys_msgs::AlvarMarker_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::custom_sys_msgs::AlvarMarker_<ContainerAllocator> >::other >  _makers_type;
  _makers_type makers;





  typedef boost::shared_ptr< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> const> ConstPtr;

}; // struct AlvarMarkers_

typedef ::custom_sys_msgs::AlvarMarkers_<std::allocator<void> > AlvarMarkers;

typedef boost::shared_ptr< ::custom_sys_msgs::AlvarMarkers > AlvarMarkersPtr;
typedef boost::shared_ptr< ::custom_sys_msgs::AlvarMarkers const> AlvarMarkersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_sys_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'custom_sys_msgs': ['/home/boocax/roswork/src/custom_sys_msgs/msg', '/home/boocax/roswork/devel/share/custom_sys_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "482f7d740dba8f6b77df1734db153e78";
  }

  static const char* value(const ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x482f7d740dba8f6bULL;
  static const uint64_t static_value2 = 0x77df1734db153e78ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/AlvarMarkers";
  }

  static const char* value(const ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
bool rt\n\
AlvarMarker[] makers\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: custom_sys_msgs/AlvarMarker\n\
Header header\n\
uint32 id\n\
uint32 confidence\n\
geometry_msgs/PoseStamped pose\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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

  static const char* value(const ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.rt);
      stream.next(m.makers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AlvarMarkers_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::AlvarMarkers_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rt: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rt);
    s << indent << "makers[]" << std::endl;
    for (size_t i = 0; i < v.makers.size(); ++i)
    {
      s << indent << "  makers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::custom_sys_msgs::AlvarMarker_<ContainerAllocator> >::stream(s, indent + "    ", v.makers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_ALVARMARKERS_H
