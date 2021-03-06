// Generated by gencpp from file custom_sys_msgs/boocax_versionResponse.msg
// DO NOT EDIT!


#ifndef CUSTOM_SYS_MSGS_MESSAGE_BOOCAX_VERSIONRESPONSE_H
#define CUSTOM_SYS_MSGS_MESSAGE_BOOCAX_VERSIONRESPONSE_H


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
struct boocax_versionResponse_
{
  typedef boocax_versionResponse_<ContainerAllocator> Type;

  boocax_versionResponse_()
    : version_str()  {
    }
  boocax_versionResponse_(const ContainerAllocator& _alloc)
    : version_str(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _version_str_type;
  _version_str_type version_str;





  typedef boost::shared_ptr< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct boocax_versionResponse_

typedef ::custom_sys_msgs::boocax_versionResponse_<std::allocator<void> > boocax_versionResponse;

typedef boost::shared_ptr< ::custom_sys_msgs::boocax_versionResponse > boocax_versionResponsePtr;
typedef boost::shared_ptr< ::custom_sys_msgs::boocax_versionResponse const> boocax_versionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e95cccfdf0b9419ff2f6d45e4903934";
  }

  static const char* value(const ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e95cccfdf0b9419ULL;
  static const uint64_t static_value2 = 0xff2f6d45e4903934ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_sys_msgs/boocax_versionResponse";
  }

  static const char* value(const ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string version_str\n\
\n\
";
  }

  static const char* value(const ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.version_str);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct boocax_versionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_sys_msgs::boocax_versionResponse_<ContainerAllocator>& v)
  {
    s << indent << "version_str: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.version_str);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_SYS_MSGS_MESSAGE_BOOCAX_VERSIONRESPONSE_H
