# chip-controler-pi-docker
This repo contains a Dockerfile to run the chip-tool on an arm64v8 ubuntu server image or mainly on RPI4B.



#**prerequisties**



# **usage: build**
docker build -t matter-controller-pi --platform=linux/arm/v8 .


# **usage: run**
sudo killall -9 bluetoothd
docker run -it matter-controller-pi

# **usage : push**
docker push mauroverhoest/matter-controller-pi

#  *usage : pull**
docker pull mauroverhoest/matter-controller-pi:latest
