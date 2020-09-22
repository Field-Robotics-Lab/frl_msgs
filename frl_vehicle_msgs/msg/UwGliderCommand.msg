# Part of underwater glider interface.  This message is
# typically published by the backseat dirver and subscribed to by
# the (simulated) glider.
# Unless explictly noted, units and coordinate conventions
# follow [REP 103: Standared Units of Measure and Coordinate Conventions](https://www.ros.org/reps/rep-0103.html)

# header.stamp specifies the ROS time for this measurement 
Header header

# Command: target pitch angle in radians. Positive pitch is nose down, following REP-103.
float32 target_pitch

# Command: target rate of descent/ascent in m/s.  Positive is up.
float32 target_z_rate

# Constants as an enum for modes of thrust input
uint8 motor_cmd_type
uint8 MOTOR_CMD_VOLTAGE=0
uint8 MOTOR_CMD_POWER=1

# Command: motor/thruster
# If motor_cmd_type==MOTOR_CMD_VOLTAGE, expect range [0-100]
# If motor_cmd_type==MOTOR_CMD_POWER, expect range [1-9]
uint32 target_motor_cmd

# Yaw control mode.  Constants used as enum.
uint8 rudder_control_mode
uint8 RUDDER_CONTROL_HEADING=0
uint8 RUDDER_CONTROL_ANGLE=1

# Command: target heading in degrees NED
# Only pertinent if rudder_control_mode==RUDDER_CONTROL_HEADING
# Note - this is a departure from the ROS standard of radians in ENU
float32 target_heading

# Command: target rudder angle either centered, full port or full stbd
# Only pertinent if rudder_control_mode==RUDDER_CONTROL_ANGLE
uint8 rudder_angle
uint8 RUDDER_ANGLE_CENTER=0
uint8 RUDDER_ANGLE_PORT=1
uint8 RUDDER_ANGLE_STBD=2
uint8 RUDDER_ANGLE_DIRECT=3

# Command: target rudder angle in radians. Positive turns to starboard.
# Only pertinent if rudder_angle==RUDDER_ANGLE_DIRECT
float32 target_rudder_angle

# Command: battery pack position
float32 target_battery_position

# Command: buoyancy engine ballast pump position
float32 target_ballast_position

# command : target lat/lon
# float32 target_lat
# float32 target_lon

# Command : target sonar parameters
# uint32 sonar_buckets
# float32 sonart_start_angle
# float32 sonar_end_angle
