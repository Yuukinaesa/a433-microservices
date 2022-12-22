#!/bin/bash
# Build image dengan nama yuukinaesa/karsajobs:latest
docker build . -t yuukinaesa/karsajobs:latest
# membuat tag baru dari karsajobs:latest ke github yuukinaesa ghcr.io/yuukinaesa/karsajobs:latest
docker tag yuukinaesa/karsajobs:latest ghcr.io/yuukinaesa/karsajobs:latest
# login ke Github Package
echo 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 | docker login ghcr.io --username yuukinaesa --password-stdin
# push ke Github Package  
docker push ghcr.io/yuukinaesa/karsajobs:latest
