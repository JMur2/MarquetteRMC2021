// Generated by gencpp from file main/FieldMsg.msg
// DO NOT EDIT!


#ifndef MAIN_MESSAGE_FIELDMSG_H
#define MAIN_MESSAGE_FIELDMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace main
{
template <class ContainerAllocator>
struct FieldMsg_
{
  typedef FieldMsg_<ContainerAllocator> Type;

  FieldMsg_()
    : ranges()
    , start_angle(0.0)
    , angular_resolution(0.0)
    , protective_field(false)  {
    }
  FieldMsg_(const ContainerAllocator& _alloc)
    : ranges(_alloc)
    , start_angle(0.0)
    , angular_resolution(0.0)
    , protective_field(false)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _ranges_type;
  _ranges_type ranges;

   typedef float _start_angle_type;
  _start_angle_type start_angle;

   typedef float _angular_resolution_type;
  _angular_resolution_type angular_resolution;

   typedef uint8_t _protective_field_type;
  _protective_field_type protective_field;





  typedef boost::shared_ptr< ::main::FieldMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::main::FieldMsg_<ContainerAllocator> const> ConstPtr;

}; // struct FieldMsg_

typedef ::main::FieldMsg_<std::allocator<void> > FieldMsg;

typedef boost::shared_ptr< ::main::FieldMsg > FieldMsgPtr;
typedef boost::shared_ptr< ::main::FieldMsg const> FieldMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::main::FieldMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::main::FieldMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::main::FieldMsg_<ContainerAllocator1> & lhs, const ::main::FieldMsg_<ContainerAllocator2> & rhs)
{
  return lhs.ranges == rhs.ranges &&
    lhs.start_angle == rhs.start_angle &&
    lhs.angular_resolution == rhs.angular_resolution &&
    lhs.protective_field == rhs.protective_field;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::main::FieldMsg_<ContainerAllocator1> & lhs, const ::main::FieldMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace main

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::main::FieldMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::main::FieldMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main::FieldMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main::FieldMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main::FieldMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main::FieldMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::main::FieldMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d92cc93fdff8827129e1f6fd20b75f7e";
  }

  static const char* value(const ::main::FieldMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd92cc93fdff88271ULL;
  static const uint64_t static_value2 = 0x29e1f6fd20b75f7eULL;
};

template<class ContainerAllocator>
struct DataType< ::main::FieldMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "main/FieldMsg";
  }

  static const char* value(const ::main::FieldMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::main::FieldMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] ranges\n"
"float32 start_angle\n"
"float32 angular_resolution\n"
"bool protective_field\n"
;
  }

  static const char* value(const ::main::FieldMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::main::FieldMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ranges);
      stream.next(m.start_angle);
      stream.next(m.angular_resolution);
      stream.next(m.protective_field);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FieldMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::main::FieldMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::main::FieldMsg_<ContainerAllocator>& v)
  {
    s << indent << "ranges[]" << std::endl;
    for (size_t i = 0; i < v.ranges.size(); ++i)
    {
      s << indent << "  ranges[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.ranges[i]);
    }
    s << indent << "start_angle: ";
    Printer<float>::stream(s, indent + "  ", v.start_angle);
    s << indent << "angular_resolution: ";
    Printer<float>::stream(s, indent + "  ", v.angular_resolution);
    s << indent << "protective_field: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.protective_field);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAIN_MESSAGE_FIELDMSG_H
