# See all process on a running container
docker container top <container>

# The --init flag ensures a container launches with a init process based on tini project
# acting as PID 1 inside the container (and responsible for reaping zombie process inside the container)
docker container run --rm -ti --init alpine:3.16 sh
# / # ps -ef
# PID   USER     TIME  COMMAND
#     1 root      0:00 /sbin/docker-init -- sh
#     6 root      0:00 sh
#     7 root      0:00 ps -ef
# OBS: You generally only need a init process in a container that has multiple parent process or process 
# that do not respond to UNIX signals

# List docker networks
docker network ls

# Inspect network
docker network inspect <network_name>

# Inspect the layers that compose a docker image
docker image history <image_tag>

# Inspect changes to files or directories on a container's filesystem
docker container diff <container>