// Generated by gencpp from file custom_sys_msgs/TaskActionMsg.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_TASKACTIONMSG_H
#define CUSTOM_SYS_MSGS_MESSAGE_TASKACTIONMSG_H


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
struct TaskActionMsg_
{
  typedef TaskActionMsg_<ContainerAllocator> Type;

  TaskActionMsg_()
    : task_id(0)
    , task_type(0)
    , action()
    , action_code(0)
    , immediately()  {
    }
  TaskActionMsg_(const ContainerAllocator& _alloc)
    : task_id(0)
    , task_type(0)
    , action(_alloc)
    , action_code(0)
    , immediately(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _task_id_type;
  _task_id_type task_id;

   typedef int32_t _task_type_type;
  _task_type_type task_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_type;
  _action_type action;

   typedef int32_t _action_code_type;
  _action_code_type action_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _immediately_type;
  _immediately_type immediately;





  typedef boost::shared_ptr< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> const> ConstPtr;

}; // struct TaskActionMsg_

typedef ::custom_sys_msgs::TaskActionMsg_<std::allocator<void> > TaskActionMsg;

typedef boost::shared_ptr< ::custom_sys_msgs::TaskActionMsg > TaskActionMsgPtr;
typedef boost::shared_ptr< ::custom_sys_msgs::TaskActionMsg const> TaskActionMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_sys_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'custom_sys_msgs': ['/home/boocax/roswork/src/custom_sys_msgs/msg', '/home/boocax/roswork/devel/share/custom_sys_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5591e51a0b146f386425b17fcb920bd8";
  }

  static const char* value(const ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5591e51a0b146f38ULL;
  static const uint64_t static_value2 = 0x6425b17fcb920bd8ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/TaskActionMsg";
  }

  static const char* value(const ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 task_id\n\
int32 task_type\n\
string action\n\
int32 action_code\n\
string immediately\n\
";
  }

  static const char* value(const ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.task_type);
      stream.next(m.action);
      stream.next(m.action_code);
      stream.next(m.immediately);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TaskActionMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::TaskActionMsg_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "task_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_type);
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action);
    s << indent << "action_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.action_code);
    s << indent << "immediately: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.immediately);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_TASKACTIONMSG_H
