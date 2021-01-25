#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create quay.io/montana/ubuntu
quay.io/montana/ubuntu:x86_64 quay.io/montana/ppc64le/ubuntu:latest

docker manifest inspect quay.io/montana/ubuntu

docker login quay.io -u "$ROBOT_USER" -p $ROBOT_TOKEN

docker manifest push quay.io/montana/ubuntu:latest
