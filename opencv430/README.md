# Name Crate docker image to use opencv430 on XavierNX/JetsonNANO
# Features
# Requirement
/etc/docker/daemon.json needs to be modified to include "default-runtime":"nvidia",
Base image is nvcr.io/nvidia/l4t-base:r32.4.2
# Installation
```bash
git clone https://github.com/sowd0726/Jetson_docker.git
cd Jetson_docker
cd opencv430
sudo bash mkopencv430.sh
```
Then you got the image tagged "opencv430:103"
# Usage
To execute Dockerimage use following example.
Please note that this is using video0 on host devivce.
If yo doun't need to use the video device , please delete --device option.

```bash
sudo docker run -it --rm --net=host --runtime nvidia --device /dev/video0:/dev/video0:mwr -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix opencv430:103
```

# Note

# Author
sowd0726 

# License

 

