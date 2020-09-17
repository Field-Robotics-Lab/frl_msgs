cmake_minimum_required(VERSION 3.0.2)
project(frl_vehicle_msgs)

find_package(catkin REQUIRED COMPONENTS geometry_msgs message_generation std_msgs)

add_message_files(
  DIRECTORY msg
  FILES
  UwGliderCommand.msg
  UwGliderStatus.msg
  )

generate_messages(DEPENDENCIES geometry_msgs std_msgs)

catkin_package(CATKIN_DEPENDS geometry_msgs message_runtime std_msgs)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h")

install(DIRECTORY migration_rules
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

