# How to run IB TWS on arm64 Linux

## Step 1 - Install docker
```
    apt install docker.io
```

## Step 2 - Download Java 8 Image
```
    docker pull aarch64/java:8-jre
```

## Run in X11 Window
```
   xhost +local:root
```

## Copy Jts from X86 installation

We need to copy Jts/ from X86 installation to server running docker.


## Run docker
```
docker -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /path/to/Jts:/root/Jts aarch64/java:8-jre /bin/bash
```
