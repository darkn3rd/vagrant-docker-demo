# Vagrant & Docker Demo

This is a short "Hello World" demo for a small Docker introduction.  The slides are available at:

* https://slides.com/devopsstudio/awesomifydev

# Running Vagrant Demo

This is tested on Mac OS X 10.10 "El Capitan"

```bash
# Start VirtualMachine and Docker Provisioner
vagrant up
# Test Server
curl -i 10.10.10.5:8080
```

# Running Docker-Compose Demo

This is tested on Mac OS X 10.10 "El Capitan"


```bash
# Start VirtualMachine
docker-machine create --driver virtualbox default
eval $(docker-machine env default)
# Start Containers
docker-compose up -d
# Test Server
curl -i $(docker-machine ip "${DOCKER_MACHINE_NAME}"):8080
```
