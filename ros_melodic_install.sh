#!/usr/bin/env sh

sudo apt update
sudo apt upgrade -y

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt update
sudo apt install ros-melodic-desktop-full -y
sudo rosdep init
rosdep update

echo " " >> ~/.bashrc
echo "########## ros/ros2 settings ##########" >> ~/.bashrc
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo " " >> ~/.bashrc
echo "export ROS_MASTER_URI=http://localhost:11311" >> ~/.bashrc
echo "export ROS_HOSTNAME=$(hostname)" >> ~/.bashrc
echo "#######################################" >> ~/.bashrc

source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -y

sudo apt update
sudo apt upgrade -y