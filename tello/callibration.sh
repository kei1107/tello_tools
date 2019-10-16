gnome-terminal -- roslaunch tello_driver tello_node.launch
sleep 1
gnome-terminal -- rosrun camera_calibration cameracalibrator.py --size 7x10 --square 0.023 image:=/tello/image_raw

