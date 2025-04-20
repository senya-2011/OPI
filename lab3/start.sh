#!/bin/sh
cd backend
./gradlew clean build
cd ..
docker compose up --build
