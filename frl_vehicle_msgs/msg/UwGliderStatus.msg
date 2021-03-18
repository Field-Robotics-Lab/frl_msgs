# Part of underwater glider interface.  This message is
# typically published the (simulated) glider at ~0.25 Hz.
# Unless explictly noted, units and coordinate conventions
# follow [REP 103: Standared Units of Measure and Coordinate Conventions](https://www.ros.org/reps/rep-0103.html)

# header.stamp specifies the ROS time for this measurement
Header header

# Euler angles, Z-X-Y, intrisic rotations conventions in degrees.
float32 roll
float32 pitch
float32 yaw

# Magnetic heading, degrees, NED
float32 heading

# Eepth in m.  Positive is down.
float32 depth

# Altitude in m. Positive is up, -1 represents out of range.
float32 altitude

# Thruster power consumption in Watts
float32 motor_power

# Rudder angle in radians. Positive turns to starboard.
float32 rudder_angle

# Battery pack position in m.
float32 battery_position

# Bouyancy engine pumped volume in cm^3. Zero is neutrally buoyant, positive causes the glider to ascend.
float32 pumped_volume
