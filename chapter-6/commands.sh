# See docker version (client and server)
docker version

# See docker system informations (including pluggins)
docker system info

# Download updates of public image
docker image pull <image_tag>

# Inspect a container
docker container inspect <container>

# Getting stdout results from a container
docker container run --rm ubuntu:22.04 /bin/false
docker container run --rm ubuntu:22.04 /bin/cat /etc/passwd

# Getting a shell inside a running container 
docker container exec -ti <container_id> /bin/bash

# Getting logs from a running contianer
docker container logs <container>
