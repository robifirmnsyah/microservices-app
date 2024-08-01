#!/bin/bash

# 1. Membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 robifirmansyah/item-app:v1

# 4. Login ke Docker Hub via Terminal
docker login -u robifirmansyah

# 5. Mengunggah image ke Docker Hub
docker push robifirmansyah/item-app:v1
