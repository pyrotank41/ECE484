From osrf/ros:noetic-desktop-full

RUN mkdir -p /my_ws/

WORKDIR /my_ws

RUN apt-get update && apt-get install -y

RUN sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'

RUN apt-get install wget -y

RUN wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -

RUN sudo apt-get install gazebo11 \
    python3-pip \
    ros-noetic-gazebo-ros-pkgs \
    ros-noetic-gazebo-ros-control \
    ros-noetic-ackermann-msgs \
    ros-noetic-xacro \
    ros-noetic-effort-controllers -y
