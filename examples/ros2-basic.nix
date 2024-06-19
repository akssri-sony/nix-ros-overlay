# Environment containing basic ROS2 tools

{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.humble;

mkShell {
  nativeBuildInputs = [
    (buildEnv {
      paths = [
        ros-core
        colcon
        ros-environment
        ros2topic
        ros2node
	      ament-cmake
        ament-cmake-core
	      ament-cmake-cpplint
	      ament-cmake-uncrustify
	      python-cmake-module
	      ament-cmake-flake8
	      cv-bridge
	      image-transport
	      rclcpp-components
	      std-msgs
	      geometry-msgs
	      nav-msgs
	      tf2
	      tf2-ros
	      diagnostic-updater
	      rosidl-default-generators
        rosdep
        # okay
        backward-ros
	      control-msgs
	      ament-cmake-clang-format
        rsl
        # moveit-ros-planning
moveit-kinematics
joint-state-broadcaster
controller-interface
joint-state-publisher
robot-state-publisher
# libfranka
hardware-interface
moveit-ros-visualization
ament-cmake-clang-tidy
generate-parameter-library
rviz2
control-toolbox
# moveit-planners-ompl
angles
        moveit-ros-move-group
ros2-control-test-assets
controller-manager
realtime-tools
tl-expected
xacro
        joint-state-publisher-gui
# ffmpeg
ament-lint-common
opencv
ffmpeg
libogg
image-transport
rosidl-default-runtime
std-msgs
pkg-config
ament-cmake
ament-lint-auto
cv-bridge
rcutils
ament-cmake-ros
rclcpp
sensor-msgs
pluginlib
rosidl-default-generators
# srl 
#franka-hardware
control-msgs
#franka-msgs
std-msgs
ament-cmake-clang-format
#franka-semantic-components
rclcpp-components
ament-cmake-lint-cmake
joint-state-broadcaster
controller-interface
#franka-robot-state-broadcaster
joint-state-publisher
rosidl-default-runtime
#libfranka
ament-cmake-cppcheck
ament-cmake-pep257
robot-state-publisher
ament-cmake-gmock
#franka-description
ament-cmake-clang-tidy
sensor-msgs
#shokunin-franka-ros2
ament-cmake-flake8
rviz2
rclcpp-lifecycle
pluginlib
ament-cmake-xmllint
ros2-control-test-assets
ament-cmake
controller-manager
ament-cmake-copyright
rclcpp
xacro
rosidl-default-generators
librealsense2
# libgtk2
gtk2
      ];
    })
  ];
}
