# Part of underwater glider interface.  This message is
# typically published by the backseat dirver and subscribed to by
# the (simulated) glider.
# Unless explictly noted, units and coordinate conventions
# follow [REP 103: Standared Units of Measure and Coordinate Conventions](https://www.ros.org/reps/rep-0103.html)

# header.stamp specifies the ROS time for this measurement 
Header header

# Pitch control mode. Constants used as enum.
uint8 pitch_cmd_type
uint8 PITCH_CMD_BATT_POS=1
uint8 PITCH_CMD_TARGET_ONCE=2
uint8 PITCH_CMD_TARGET_SERVO=3

# Command: the desired pitch value
# If pitch_cmd_type==PITCH_CMD_BATT_POS, specifies the position of the battery pack in m.
# If pitch_cmd_type==PITCH_CMD_TARGET_ONCE, specifies the desired pitch angle in radians. Positive pitch is nose down. A table lookup is used to compute the desired battery position and no corrections are made.
# If pitch_cmd_type==PITCH_CMD_TARGET_SERVO, specifies the desired pitch angle in radians. Positive pitch is nose down. The battery position is constantly servoed to maintain the target pitch.
float32 target_pitch_value

# Constants as an enum for modes of thrust input
uint8 motor_cmd_type
uint8 MOTOR_CMD_VOLTAGE=1
uint8 MOTOR_CMD_POWER=2

# Command: motor/thruster
# If motor_cmd_type==MOTOR_CMD_VOLTAGE, expect range [0-100]
# If motor_cmd_type==MOTOR_CMD_POWER, expect range [1-9]
uint32 target_motor_cmd

# Yaw control mode.  Constants used as enum.
uint8 rudder_control_mode
uint8 RUDDER_CONTROL_HEADING=1
uint8 RUDDER_CONTROL_ANGLE=2

# Command: target heading in degrees NED
# Only pertinent if rudder_control_mode==RUDDER_CONTROL_HEADING
# Note - this is a departure from the ROS standard of radians in ENU
float32 target_heading

# Command: target rudder angle either centered, full port or full stbd
# Only pertinent if rudder_control_mode==RUDDER_CONTROL_ANGLE
uint8 rudder_angle
uint8 RUDDER_ANGLE_CENTER=1
uint8 RUDDER_ANGLE_PORT=2
uint8 RUDDER_ANGLE_STBD=3
uint8 RUDDER_ANGLE_DIRECT=4

# Command: target rudder angle in radians. Positive turns to starboard.
# Only pertinent if rudder_angle==RUDDER_ANGLE_DIRECT
float32 target_rudder_angle

# Command: buoyancy engine pumped volume in cm^3. Zero is neutrally buoyant, positive causes the glider to ascend.
float32 target_pumped_volume

# command : target lat/lon
# float32 target_lat
# float32 target_lon

# Command : target sonar parameters
# uint32 sonar_buckets
# float32 sonart_start_angle
# float32 sonar_end_angle
