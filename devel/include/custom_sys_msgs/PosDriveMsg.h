// Generated by gencpp from file custom_sys_msgs/PosDriveMsg.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_POSDRIVEMSG_H
#define CUSTOM_SYS_MSGS_MESSAGE_POSDRIVEMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace custom_sys_msgs
{
template <class ContainerAllocator>
struct PosDriveMsg_
{
  typedef PosDriveMsg_<ContainerAllocator> Type;

  PosDriveMsg_()
    : woke_mode(0)
    , vel(0.0)
    , dt(0.0)  {
    }
  PosDriveMsg_(const ContainerAllocator& _alloc)
    : woke_mode(0)
    , vel(0.0)
    , dt(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _woke_mode_type;
  _woke_mode_type woke_mode;

   typedef float _vel_type;
  _vel_type vel;

   typedef float _dt_type;
  _dt_type dt;





  typedef boost::shared_ptr< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> const> ConstPtr;

}; // struct PosDriveMsg_

typedef ::custom_sys_msgs::PosDriveMsg_<std::allocator<void> > PosDriveMsg;

typedef boost::shared_ptr< ::custom_sys_msgs::PosDriveMsg > PosDriveMsgPtr;
typedef boost::shared_ptr< ::custom_sys_msgs::PosDriveMsg const> PosDriveMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7bb6b3d9b61499e839f2b3aff8cedd55";
  }

  static const char* value(const ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7bb6b3d9b61499e8ULL;
  static const uint64_t static_value2 = 0x39f2b3aff8cedd55ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/PosDriveMsg";
  }

  static const char* value(const ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 woke_mode\n\
float32 vel\n\
float32 dt\n\
";
  }

  static const char* value(const ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.woke_mode);
      stream.next(m.vel);
      stream.next(m.dt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PosDriveMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::PosDriveMsg_<ContainerAllocator>& v)
  {
    s << indent << "woke_mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.woke_mode);
    s << indent << "vel: ";
    Printer<float>::stream(s, indent + "  ", v.vel);
    s << indent << "dt: ";
    Printer<float>::stream(s, indent + "  ", v.dt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_POSDRIVEMSG_H