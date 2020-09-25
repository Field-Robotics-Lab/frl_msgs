# Part of underwater glider interface.  This message is
# typically published the (simulated) glider at ~0.25 Hz.
# Unless explictly noted, units and coordinate conventions
# follow [REP 103: Standared Units of Measure and Coordinate Conventions](https://www.ros.org/reps/rep-0103.html)

# header.stamp specifies the ROS time for this measurement 
Header header

# Estimated latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Estimated longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Estimated Euler angles, Z-X-Y, intrisic rotations conventions in degrees.
float32 roll
float32 pitch
float32 yaw

# Estimated magnetic heading, degrees, NED
float32 heading

# Estimated depth in m.  Positive is down.
float32 depth

# Estimated altitude in m. Positive is up, -1 represents out of range.
float32 altitude

# Estimated thruster power consumption in Watts
float32 motor_power

# Estimated rudder angle in radians. Positive turns to starboard.
float32 rudder_angle

# Estiamted battery pack position in m.
float32 battery_position

# Estimated bouyancy engine pumped volume in cm^3. Zero is neutrally buoyant, positive causes the glider to ascend.
float32 pumped_volume
