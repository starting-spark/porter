# Porter

Prerequisites
-------------
* Git
* Docker
* Docker-Compose

Note that Docker and Docker-Compose is bundled with Docker for Mac

Getting Started
---------------
1. clone repository: `git clone git@github.com:starting-spark/porter.git --recursive`
2. run bootstrap.sh: `./bootstrap.sh`
3. start services: `docker-compose up`
4. open browser and visit `http://localhost:4200`

Build
-----
1. docker-compose run app scripts/build.sh

Deploy
------
1. docker-compose -f docker-compose.yml -f docker/docker-compose.production.yml \
  run app scripts/deploy.sh 

