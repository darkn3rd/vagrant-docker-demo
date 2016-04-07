# Vagrant & Docker Demo

This is a short "Hello World" demo for a small Docker introduction.  The slides are available at:

* https://slides.com/devopsstudio/awesomifydev

# Running Vagrant Demo

This is tested on Mac OS X 10.10 "El Capitan"

```bash
vagrant up
curl -i 10.10.10.5:8080
```

# Running Docker-Compose Demo

```bash
docker-machine create --driver virtualbox default
eval $(docker-machine env default)
curl -i $(docker-machine ip "${DOCKER_MACHINE_NAME}"):8080
```
