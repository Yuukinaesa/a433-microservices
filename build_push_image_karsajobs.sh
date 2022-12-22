#!/bin/bash
# Build image dengan nama yuukinaesa/karsajobs:latest
docker build . -t yuukinaesa/karsajobs:latest
# login ke Github Package
echo $CR_PAT | docker login ghcr.io --username yuukinaesa --password-stdin
# push ke Github Package  
docker push ghcr.io/yuukinaesa/karsajobs:latest