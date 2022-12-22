#!/bin/bash
# Build image dengan nama yuukinaesa/karsajobs:latest
docker build . -t yuukinaesa/karsajobs:latest
# membuat tag baru dari karsajobs:latest ke github yuukinaesa ghcr.io/yuukinaesa/karsajobs:latest
docker tag yuukinaesa/karsajobs:latest ghcr.io/yuukinaesa/karsajobs:latest
# login ke Github Package
echo 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 | docker login ghcr.io --username yuukinaesa --password-stdin
# push ke Github Package  
docker push ghcr.io/yuukinaesa/karsajobs:latest
