# Creating a container with specific name
docker container create --name="awsome-service" ubuntu:latest sleep 120

# Starting a container
docker container start awesome-service

# Stopping a container (eq of SIGTERM)
docker stop awesome-service

# Killing a container (eq of SIGKILL)
docker kill awesome-service

# Pausing a container
docker pause awesome-service

# Resume a paused container
docker unpause awesome-service

# Deleting a container
docker rm awesome-service

# Deleting all containers on host
docker container rm $(docker container ls -a -q)

# Deleting all images on host
docker image rm $(docker images -q)

# Passing labels to a container (-l)
docker container run --rm -d --name has-some-labels -l deployer=Paulin ubuntu:latest

# Setting the hostname on a container (--hotname)
docker container run --rm -ti --hostname="mycontainer.example.com" ubuntu:latest /bin/bash

# Setting the dns on a container (--dns, --dns-search)
docker container run --rm -ti --dns=8.8.8.8 --dns-search:example.com ubuntu:latest /bin/bash

# Setting the mac address on a container (--mac-address)
docker container run --rm -ti --mac-address="a2:11:aa:22:bb:33" ubuntu:latest /bin/bash

# Using mount to get data from /home/paulo/projetosFacul/docker-study/chapter-5/data to /mnt/session_data in a container
docker container run --rm -ti --mount type=bind,target=/mnt/session_data,source=/home/paulo/projetosFacul/docker-study/chapter-5/data ubuntu:latest /bin/bash

# Using stress command and limiting cpu shares
docker container run --rm -ti spkane/train-os stress -v --cpu 2 --io 1 --vm 2 --vm-bytes 128M --timeout 120s
docker container run --rm -ti --cpu-shares 512 spkane/train-os stress -v --cpu 2 --io 1 --vm 2 --vm-bytes 128M --timeout 120s

# Using stree command os specific cpus cores
docker container run --rm -ti --cpu-shares 512 --cpuset-cpus=0 spkane/train-os stress -v --cpu 2 --io 1 --vm 2 --vm-bytes 128M --timeout 120s

# Using cpus quotas
docker container run --rm -ti --cpus=".25" spkane/train-os stress -v --cpu 2 --io 1 --vm 2 --vm-bytes 128M --timeout 60s

# Using memory constraint
docker container run --rm -ti --memory 512m spkane/train-os stress -v --cpu 2 --io 1 --vm 2 --vm-bytes 128M --timeout 60s

# Auto-restarting a container on failure (--restart)
docker container run -ti --restart=on-failure:3 --memory 100m spkane/train-os stress -v --cpu 2 --io 1 --vm 2 --vm-bytes 128M --timeout 10s
