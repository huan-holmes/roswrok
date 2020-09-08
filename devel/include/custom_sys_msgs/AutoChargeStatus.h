// Generated by gencpp from file custom_sys_msgs/AutoChargeStatus.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_AUTOCHARGESTATUS_H
#define CUSTOM_SYS_MSGS_MESSAGE_AUTOCHARGESTATUS_H


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
struct AutoChargeStatus_
{
  typedef AutoChargeStatus_<ContainerAllocator> Type;

  AutoChargeStatus_()
    : task_id(0)
    , status_code(0)
    , sub_code(0)  {
    }
  AutoChargeStatus_(const ContainerAllocator& _alloc)
    : task_id(0)
    , status_code(0)
    , sub_code(0)  {
  (void)_alloc;
    }



   typedef int32_t _task_id_type;
  _task_id_type task_id;

   typedef int32_t _status_code_type;
  _status_code_type status_code;

   typedef int32_t _sub_code_type;
  _sub_code_type sub_code;





  typedef boost::shared_ptr< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> const> ConstPtr;

}; // struct AutoChargeStatus_

typedef ::custom_sys_msgs::AutoChargeStatus_<std::allocator<void> > AutoChargeStatus;

typedef boost::shared_ptr< ::custom_sys_msgs::AutoChargeStatus > AutoChargeStatusPtr;
typedef boost::shared_ptr< ::custom_sys_msgs::AutoChargeStatus const> AutoChargeStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "222e503d05f857472237b6a227645e69";
  }

  static const char* value(const ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x222e503d05f85747ULL;
  static const uint64_t static_value2 = 0x2237b6a227645e69ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/AutoChargeStatus";
  }

  static const char* value(const ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 task_id\n\
int32 status_code\n\
int32 sub_code\n\
";
  }

  static const char* value(const ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.status_code);
      stream.next(m.sub_code);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AutoChargeStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::AutoChargeStatus_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "status_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status_code);
    s << indent << "sub_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sub_code);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_AUTOCHARGESTATUS_H