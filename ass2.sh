#! /bin/bash

cd ~/starter_code 
./turtlebot3_startup.sh &
sleep 5

cd ~/comp3431_ass2
ros2 run locateBarcodeLocation locateBarcodeLocation &
ros2 run cpp_pubsub listener &
ros2 run zbar_ros barcode_reader --ros-args &
sleep 5

cd ~/starter_code
./starter_code.sh 

