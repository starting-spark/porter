#!/bin/sh

# setup_containers
#
# sets up containers for the different environments
#
# example usage: setup_environment production
setup_containers() {
  local environment=$1

  case $environment in
    'development')
      docker-compose build
      docker-compose run server scripts/setup_database.sh
    ;;
    'staging')
      docker-compose -f docker-compose.yml -f docker/docker-compose.production.yml \
        build
    ;;
  esac
}

