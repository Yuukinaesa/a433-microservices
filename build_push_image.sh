#!/bin/sh
# build image dengan tag item-app:v1
docker build . -t item-app:v1
# menampilkan list image
docker image ls
# membuat tag baru dari item-app:v1 ke github yuukinaesa ghcr.io/yuukinaesa/a433-microservices:v1
docker tag item-app:v1 ghcr.io/yuukinaesa/a433-microservices:v1
# menggunakan GIT TOKEN User dan login ke github package
echo $CR_PAT | docker login ghcr.io --username yuukinaesa --password-stdin
# push image ke github package
docker push ghcr.io/yuukinaesa/a433-microservices:v1