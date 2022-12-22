#!/bin/bash
# Build image dengan nama yuukinaesa/karsajobs:latest
docker build . -t yuukinaesa/karsajobs:latest
# membuat tag baru dari karsajobs:latest ke github yuukinaesa ghcr.io/yuukinaesa/karsajobs:latest
docker tag yuukinaesa/karsajobs:latest ghcr.io/yuukinaesa/karsajobs:latest
# login ke Github Package
echo dckr_pat_vbtBpTCNzlUZ6YPrCEwp7IFcyOw | docker login ghcr.io --username yuukinaesa --password-stdin
# push ke Github Package  
docker push ghcr.io/yuukinaesa/karsajobs:latest
