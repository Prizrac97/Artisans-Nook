#!/bin/bash

# Остановить и удалить старый контейнер
docker stop artisans-nook-container || true
docker rm artisans-nook-container || true


# Скачивать последний образ с DockerHub
docker pull $DOCKER_USERNAME/artisans-nook:latest


# Запустить новый контейнер
docker run -d --name artisans-nook-container -p 80:80 $DOCKER_USERNAME/artisans-nook:latest
