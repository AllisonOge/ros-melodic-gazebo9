# run docker container in detached iteractive 
# mode for experimenting with gazebo for linux OS
# this has been tested for debian systems only but 
# should work for all linux versions that are
# compatible with docker.


xhost local:root

XAUTH=/tmp/.docker.xuath

docker run -dti \
    --name=projectuav \
    --env="DISPLAY=$DISPLAY"\
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --net=host \
    --privileged \
    ros-melodic-gazebo9:latest