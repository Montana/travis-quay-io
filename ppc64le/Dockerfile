FROM ubuntu:latest
CMD echo "Hello World from a container running on $(uname -m)"
 
docker build -f=Dockerfile.x8664 -t multi-arch-image:x8664 .
docker tag multi-arch-image:x8664 rpsene/multi-arch-image:x8664
docker login
docker push rpsene/multi-arch-image:x8664
 
vi ~/.docker/config.json
"experimental": "enabled",
 
docker manifest create rpsene/multi-arch-image:latest \
rpsene/multi-arch-image:x8664 rpsene/multi-arch-image:ppc64le \
rpsene/multi-arch-image:s390x
 
docker manifest push rpsene/multi-arch-image:latest
 
docker manifest inspect rpsene/multi-arch-image
 
docker stop $(docker ps -a -q)
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)
 
docker pull rpsene/multi-arch-image:latest
docker run --rm rpsene/multi-arch-image:latest
 
