#!/bin/bash
rm Dockerfile
grep t186ref /etc/nv_tegra_release
if [ $? = 0 ]; then
        echo Using Dockerfile for XavierNX
        cp Dockerfile.NX Dockerfile
else
        grep t210ref /etc/nv_tegra_release
        if [ $? = 0]; then
                echo Using Dockerfile for Jetson NANO
                cp Dockerfile.NANO Dockerfile
        else
                echo Unknown hardware
                exit 1
        fi
fi

docker build -t darknet:100 .
