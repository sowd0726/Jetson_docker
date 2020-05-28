grep t186ref /etc/nv_tegra_release
rm Dockerfile
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

cp -rp /usr/include/ .
mkdir alternatives
cp -apd /etc/alternatives/*cudnn* alternatives
sudo docker build -t opencv430:103 .


