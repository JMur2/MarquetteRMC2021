// Generated by gencpp from file main/IntrusionDatumMsg.msg
// DO NOT EDIT!


#ifndef MAIN_MESSAGE_INTRUSIONDATUMMSG_H
#define MAIN_MESSAGE_INTRUSIONDATUMMSG_H


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
struct IntrusionDatumMsg_
{
  typedef IntrusionDatumMsg_<ContainerAllocator> Type;

  IntrusionDatumMsg_()
    : size(0)
    , flags()  {
    }
  IntrusionDatumMsg_(const ContainerAllocator& _alloc)
    : size(0)
    , flags(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _size_type;
  _size_type size;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _flags_type;
  _flags_type flags;





  typedef boost::shared_ptr< ::main::IntrusionDatumMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::main::IntrusionDatumMsg_<ContainerAllocator> const> ConstPtr;

}; // struct IntrusionDatumMsg_

typedef ::main::IntrusionDatumMsg_<std::allocator<void> > IntrusionDatumMsg;

typedef boost::shared_ptr< ::main::IntrusionDatumMsg > IntrusionDatumMsgPtr;
typedef boost::shared_ptr< ::main::IntrusionDatumMsg const> IntrusionDatumMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::main::IntrusionDatumMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::main::IntrusionDatumMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::main::IntrusionDatumMsg_<ContainerAllocator1> & lhs, const ::main::IntrusionDatumMsg_<ContainerAllocator2> & rhs)
{
  return lhs.size == rhs.size &&
    lhs.flags == rhs.flags;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::main::IntrusionDatumMsg_<ContainerAllocator1> & lhs, const ::main::IntrusionDatumMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace main

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::main::IntrusionDatumMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::main::IntrusionDatumMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main::IntrusionDatumMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::main::IntrusionDatumMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main::IntrusionDatumMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::main::IntrusionDatumMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::main::IntrusionDatumMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c139fe38426240c2edfc9827f2858f8";
  }

  static const char* value(const ::main::IntrusionDatumMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c139fe38426240cULL;
  static const uint64_t static_value2 = 0x2edfc9827f2858f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::main::IntrusionDatumMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "main/IntrusionDatumMsg";
  }

  static const char* value(const ::main::IntrusionDatumMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::main::IntrusionDatumMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 size\n"
"bool[] flags\n"
;
  }

  static const char* value(const ::main::IntrusionDatumMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::main::IntrusionDatumMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.size);
      stream.next(m.flags);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IntrusionDatumMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::main::IntrusionDatumMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::main::IntrusionDatumMsg_<ContainerAllocator>& v)
  {
    s << indent << "size: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.size);
    s << indent << "flags[]" << std::endl;
    for (size_t i = 0; i < v.flags.size(); ++i)
    {
      s << indent << "  flags[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.flags[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAIN_MESSAGE_INTRUSIONDATUMMSG_H
