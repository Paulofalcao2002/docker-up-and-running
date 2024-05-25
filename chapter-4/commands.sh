# Buildando a imagem com argumento
docker image build --build-arg email=me@example.com -t example/docker-node-hello:latest .

# Rodando um container com a imagem
docker container run --rm -d -p 8080:8080 example/docker-node-hello:latest 

# Rodando um container e passando argumentos de ambiente para ele
docker container run --rm -d -p 8080:8080 -e WHO="Paulin" example/docker-node-hello:latest

# Inspecionando argumentos da build
docker image inspect example/docker-node-hello:latest | grep maintainer

# Verificando os containers rodando
docker container ls

# Parando a execução de um container
docker container stop <id>  

# Mudando o nome da imagem anterior
docker image tag example/docker-node-hello:latest docker.io/paulohmf/docker-node-hello:latest

# Dando push na imagem para o docker hub
docker image push paulohmf/docker-node-hello:latest

# Exportando os arquivos que compoe um container
docker container export <id> -o <nome do arquivo .tar>

# Inspecionar a imagem de um container no docker server
docker image inspect <imagem>

# Entrando dentro da Vm do docker desktop
docker container run --rm -it --privileged --pid=host debian nsenter -t 1 -m -u -n -i sh

# Verificando as camadas de uma imagem
docker image history <tag>

# Medindo o tempo de uma build sem cache
time dokcer image buill --no-cache .
