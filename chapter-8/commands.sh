# Build all necessary images in the compose file
docker compose build

# Create and run the containers
docker compose up -d

# Stop and destroy the containers
docker compose down

# View logs 
docker compose logs 

# Restart service
docker compose restart <service_name>

# See processes inside the container being managed by docker compose
docker compose top

# Enter a running compose container
docker compose exec <service_name> <executable>

# Compose also can stop, start, pause, unpause single containers or all
docker compose start <service_name>
docker compose pause

