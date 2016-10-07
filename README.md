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
1. rm -rf docs/* dist/* 
2. docker-compose run app scripts/build.sh
3. chown -R username dist # docker saves files as root
4. mv dist/* docs/

