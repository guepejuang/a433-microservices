#!/bin/bash

# 1. Membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image
docker images

# 3. Mengubah nama image sesuai format GitHub Packages
docker tag item-app:v1 docker.pkg.github.com/guepejuang/a433-microservices/item-app:v1


# 4. Melakukan login berdasarkan github token yang sudah di export sebelumnya
echo $PASSWORD_DOCKER_HUB | docker login docker.pkg.github.com -u guepejuang --password-stdin

# 5. Melakukan push image ke docker packages
docker push docker.pkg.github.com/guepejuang/a433-microservices/item-app:v1
