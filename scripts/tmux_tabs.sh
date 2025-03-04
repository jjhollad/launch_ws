#!/bin/bash

# Source ROS 2 and workspace setup
source /opt/ros/humble/setup.bash
source ~/turtlebot3_ws/install/setup.bash

# Start a new tmux session named 'ros_multi'
tmux new-session -d -s ros_multi -n turtlebot3_gazebo "ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py"

# Create a new tab for Navigation2
tmux new-window -t ros_multi:1 -n navigation2 "ros2 launch turtlebot3_navigation2 navigation2.launch.py use_sim_time:=True map:=maps/my_map.yaml"

# Create another tab for Cartographer
tmux new-window -t ros_multi:2 -n cartographer "ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=True"

# Optionally add more tabs as needed
tmux new-window -t ros_multi:3 -n teleop "ros2 run turtlebot3_teleop teleop_keyboard"

# Attach to the tmux session to view all tabs
tmux attach-session -t ros_multi
#!/bin/bash