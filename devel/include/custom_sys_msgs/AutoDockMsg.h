// Generated by gencpp from file custom_sys_msgs/AutoDockMsg.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_AUTODOCKMSG_H
#define CUSTOM_SYS_MSGS_MESSAGE_AUTODOCKMSG_H


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
struct AutoDockMsg_
{
  typedef AutoDockMsg_<ContainerAllocator> Type;

  AutoDockMsg_()
    : direction(0)
    , dist_to_stop(0.0)
    , final_dist(0.0)  {
    }
  AutoDockMsg_(const ContainerAllocator& _alloc)
    : direction(0)
    , dist_to_stop(0.0)
    , final_dist(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _direction_type;
  _direction_type direction;

   typedef double _dist_to_stop_type;
  _dist_to_stop_type dist_to_stop;

   typedef double _final_dist_type;
  _final_dist_type final_dist;





  typedef boost::shared_ptr< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> const> ConstPtr;

}; // struct AutoDockMsg_

typedef ::custom_sys_msgs::AutoDockMsg_<std::allocator<void> > AutoDockMsg;

typedef boost::shared_ptr< ::custom_sys_msgs::AutoDockMsg > AutoDockMsgPtr;
typedef boost::shared_ptr< ::custom_sys_msgs::AutoDockMsg const> AutoDockMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4151794017432cf3ab9616a1c6f5ab81";
  }

  static const char* value(const ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4151794017432cf3ULL;
  static const uint64_t static_value2 = 0xab9616a1c6f5ab81ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/AutoDockMsg";
  }

  static const char* value(const ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 direction\n\
float64 dist_to_stop\n\
float64 final_dist\n\
";
  }

  static const char* value(const ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.dist_to_stop);
      stream.next(m.final_dist);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AutoDockMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::AutoDockMsg_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<int32_t>::stream(s, indent + "  ", v.direction);
    s << indent << "dist_to_stop: ";
    Printer<double>::stream(s, indent + "  ", v.dist_to_stop);
    s << indent << "final_dist: ";
    Printer<double>::stream(s, indent + "  ", v.final_dist);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_AUTODOCKMSG_H
