gnome-terminal -- roslaunch tello_driver tello_node.launch
sleep 3
gnome-terminal -- rosrun image_view image_view image:=/tello/image_raw
