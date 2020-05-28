# Name Crate docker image to use Darknet on XavierNX/JetsonNANO
# DEMO
# Features
# Requirement
The image depends on the OPENCV430 capable image.
In this repository , it should be tagged as "opencv430:103"
# Installation

```bash
git clone https://github.com/sowd0726/Jetson_docker.git
cd Jetson_docker
cd darknet
sudo bash mkdarknet.sh
```

Then you got the image tagged "darknet:100"
# Usage
To execute Dockerimage use following example.
Please note that this is using video0 on host devivce.
If yo doun't need to use the video device , please delete --device option.
Darknet.sh/darknet0.sh are the example.

```bash
sudo docker run -it --rm --net=host --runtime nvidia --device /dev/video0:/dev/video0:mwr -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix darknet:100
```

# Note

# Author
sowd0726 

# License

 

