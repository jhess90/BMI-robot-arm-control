/* Auto-generated by genmsg_cpp for file /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_msgs/msg/RTJointPos.msg */
#ifndef WAM_MSGS_MESSAGE_RTJOINTPOS_H
#define WAM_MSGS_MESSAGE_RTJOINTPOS_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace wam_msgs
{
template <class ContainerAllocator>
struct RTJointPos_ {
  typedef RTJointPos_<ContainerAllocator> Type;

  RTJointPos_()
  : joints()
  , rate_limits()
  {
  }

  RTJointPos_(const ContainerAllocator& _alloc)
  : joints(_alloc)
  , rate_limits(_alloc)
  {
  }

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _joints_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  joints;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _rate_limits_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  rate_limits;


  typedef boost::shared_ptr< ::wam_msgs::RTJointPos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wam_msgs::RTJointPos_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct RTJointPos
typedef  ::wam_msgs::RTJointPos_<std::allocator<void> > RTJointPos;

typedef boost::shared_ptr< ::wam_msgs::RTJointPos> RTJointPosPtr;
typedef boost::shared_ptr< ::wam_msgs::RTJointPos const> RTJointPosConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::wam_msgs::RTJointPos_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::wam_msgs::RTJointPos_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace wam_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::wam_msgs::RTJointPos_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::wam_msgs::RTJointPos_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::wam_msgs::RTJointPos_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6db71b8c4d3c870c701b3f89e85b7a36";
  }

  static const char* value(const  ::wam_msgs::RTJointPos_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x6db71b8c4d3c870cULL;
  static const uint64_t static_value2 = 0x701b3f89e85b7a36ULL;
};

template<class ContainerAllocator>
struct DataType< ::wam_msgs::RTJointPos_<ContainerAllocator> > {
  static const char* value() 
  {
    return "wam_msgs/RTJointPos";
  }

  static const char* value(const  ::wam_msgs::RTJointPos_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::wam_msgs::RTJointPos_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32[] joints\n\
float32[] rate_limits\n\
\n\
";
  }

  static const char* value(const  ::wam_msgs::RTJointPos_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::wam_msgs::RTJointPos_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.joints);
    stream.next(m.rate_limits);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct RTJointPos_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wam_msgs::RTJointPos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::wam_msgs::RTJointPos_<ContainerAllocator> & v) 
  {
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joints[i]);
    }
    s << indent << "rate_limits[]" << std::endl;
    for (size_t i = 0; i < v.rate_limits.size(); ++i)
    {
      s << indent << "  rate_limits[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.rate_limits[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // WAM_MSGS_MESSAGE_RTJOINTPOS_H

