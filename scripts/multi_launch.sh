#!/bin/bash

# Source ROS 2 and workspace setup
source /opt/ros/humble/setup.bash&
source ~/turtlebot3_ws/install/setup.bash &

# Launch TurtleBot3 Gazebo simulation
wt wsl ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py &

# Wait for Gazebo to fully load
#TRYING MORE SHIT    sleep 20 &
# Launch Navigation2 with simulation time and custom map
#TRYING MORE SHIT    ros2 launch turtlebot3_navigation2 navigation2.launch.py use_sim_time:=True map:=maps/my_map.yaml &


# Wait for Navigation2 to initialize
#TRYING MORE SHIT    sleep 10 &

# Launch Cartographer SLAM with simulation time
#TRYING MORE SHIT    ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=True &

# Launch Teleoperation
#TRYING MORE SHIT    ros2 run turtlebot3_teleop teleop_keyboard 
#!/bin/bash
