FROM ppc64le/ubuntu:latest
CMD echo "Hello World from a container running on $(uname -m)"
 
docker build -f=Dockerfile.ppc64le -t multi-arch-image:ppc64le .
docker tag multi-arch-image:ppc64le rpsene/multi-arch-image:ppc64le
docker login
docker push rpsene/multi-arch-image:ppc64le
 
docker stop $(docker ps -a -q)
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)
 
docker pull rpsene/multi-arch-image:latest
docker run --rm rpsene/multi-arch-image:latest
