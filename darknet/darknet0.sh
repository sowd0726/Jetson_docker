sudo docker run -it --rm --net=host --runtime nvidia --device /dev/video0:/dev/video0:mwr -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix darknet:100
