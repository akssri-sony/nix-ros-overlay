
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, mimick-vendor, performance-test-fixture, rcl-lifecycle, rclcpp, rcpputils, rcutils, rmw, rosidl-typesupport-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rclcpp-lifecycle";
  version = "16.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/humble/rclcpp_lifecycle/16.0.10-1.tar.gz";
    name = "16.0.10-1.tar.gz";
    sha256 = "c22b5f38c962fa65d78b445ade3f38cf36dbc89530912b332f6a79fba985f809";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rcpputils rcutils test-msgs ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclcpp rmw rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Package containing a prototype for lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
