// Generated by gencpp from file custom_sys_msgs/StandbyStatusMsg.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_STANDBYSTATUSMSG_H
#define CUSTOM_SYS_MSGS_MESSAGE_STANDBYSTATUSMSG_H


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
struct StandbyStatusMsg_
{
  typedef StandbyStatusMsg_<ContainerAllocator> Type;

  StandbyStatusMsg_()
    : task_id(0)
    , task_type(0)
    , status_code(0)
    , time_out(0.0)
    , display_info()  {
    }
  StandbyStatusMsg_(const ContainerAllocator& _alloc)
    : task_id(0)
    , task_type(0)
    , status_code(0)
    , time_out(0.0)
    , display_info(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _task_id_type;
  _task_id_type task_id;

   typedef int32_t _task_type_type;
  _task_type_type task_type;

   typedef int32_t _status_code_type;
  _status_code_type status_code;

   typedef double _time_out_type;
  _time_out_type time_out;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _display_info_type;
  _display_info_type display_info;





  typedef boost::shared_ptr< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> const> ConstPtr;

}; // struct StandbyStatusMsg_

typedef ::custom_sys_msgs::StandbyStatusMsg_<std::allocator<void> > StandbyStatusMsg;

typedef boost::shared_ptr< ::custom_sys_msgs::StandbyStatusMsg > StandbyStatusMsgPtr;
typedef boost::shared_ptr< ::custom_sys_msgs::StandbyStatusMsg const> StandbyStatusMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3d76ddb95882158e393770b68e0862a9";
  }

  static const char* value(const ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3d76ddb95882158eULL;
  static const uint64_t static_value2 = 0x393770b68e0862a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/StandbyStatusMsg";
  }

  static const char* value(const ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 task_id\n\
int32 task_type\n\
int32 status_code\n\
float64 time_out\n\
string display_info\n\
";
  }

  static const char* value(const ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.task_type);
      stream.next(m.status_code);
      stream.next(m.time_out);
      stream.next(m.display_info);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StandbyStatusMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::StandbyStatusMsg_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "task_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_type);
    s << indent << "status_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status_code);
    s << indent << "time_out: ";
    Printer<double>::stream(s, indent + "  ", v.time_out);
    s << indent << "display_info: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.display_info);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_STANDBYSTATUSMSG_H
