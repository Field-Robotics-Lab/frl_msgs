# Part of underwater glider interface.  This message is
# typically published by the backseat dirver and subscribed to by
# the (simulated) glider.
# Unless explictly noted, units and coordinate conventions
# follow [REP 103: Standared Units of Measure and Coordinate Conventions](https://www.ros.org/reps/rep-0103.html)

# header.stamp specifies the ROS time for this measurement 
Header header

# Command: pitch angle in radians. Positive pitch is nose down, following REP-103.
float32 pitch

# Command: rate of descent/ascent in m/s.  Positive is up.
float32 z_rate

# Constants as an enum for modes of thrust input
uint8 motor_cmd_type
uint8 MOTOR_CMD_VOLTAGE=0
uint8 MOTOR_CMD_POWER=1

# Command: motor/thruster
# If motor_cmd_type==MOTOR_CMD_VOLTAGE, expect range [0-100]
# If motor_cmd_type==MOTOR_CMD_POWER, expect range [1-9]
uint32 motor_cmd

# Yaw control mode.  Constants used as enum.
uint8 rudder_control_mode
uint8 RUDDER_CONTROL_HEADING=0
uint8 RUDDER_CONTROL_ANGLE=1

# Command: heading in degrees NED
# Only pertinent if rudder_control_mode==RUDDER_CONTROL_HEADING
# Note - this is a departure from the ROS standard of radians in ENU
float32 heading

# Commadn: rudder angle either centered, full port or full stbd
# Only pertinent if rudder_control_mode==RUDDER_CONTROL_ANGLE
uint8 rudder_angle
uint8 RUDDER_ANGLE_CENTER=0
uint8 RUDDER_ANGLE_PORT=1
uint8 RUDDER_ANGLE_STBD=2

