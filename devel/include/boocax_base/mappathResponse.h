// Generated by gencpp from file boocax_base/mappathResponse.msg
// DO NOT EDIT!


#ifndef BOOCAX_BASE_MESSAGE_MAPPATHRESPONSE_H
#define BOOCAX_BASE_MESSAGE_MAPPATHRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace boocax_base
{
template <class ContainerAllocator>
struct mappathResponse_
{
  typedef mappathResponse_<ContainerAllocator> Type;

  mappathResponse_()
    : path()  {
    }
  mappathResponse_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::boocax_base::mappathResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::boocax_base::mappathResponse_<ContainerAllocator> const> ConstPtr;

}; // struct mappathResponse_

typedef ::boocax_base::mappathResponse_<std::allocator<void> > mappathResponse;

typedef boost::shared_ptr< ::boocax_base::mappathResponse > mappathResponsePtr;
typedef boost::shared_ptr< ::boocax_base::mappathResponse const> mappathResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::boocax_base::mappathResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::boocax_base::mappathResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace boocax_base

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::boocax_base::mappathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::boocax_base::mappathResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::boocax_base::mappathResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::boocax_base::mappathResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::boocax_base::mappathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::boocax_base::mappathResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::boocax_base::mappathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1d00cd540af97efeb6b1589112fab63e";
  }

  static const char* value(const ::boocax_base::mappathResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1d00cd540af97efeULL;
  static const uint64_t static_value2 = 0xb6b1589112fab63eULL;
};

template<class ContainerAllocator>
struct DataType< ::boocax_base::mappathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "boocax_base/mappathResponse";
  }

  static const char* value(const ::boocax_base::mappathResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::boocax_base::mappathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string path\n\
";
  }

  static const char* value(const ::boocax_base::mappathResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::boocax_base::mappathResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mappathResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::boocax_base::mappathResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::boocax_base::mappathResponse_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOOCAX_BASE_MESSAGE_MAPPATHRESPONSE_H
