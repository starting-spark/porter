#!/bin/sh
set -e

SRC_DIR=$( cd $(dirname $0) ; pwd -P )
. $SRC_DIR/scripts/functions.sh

### define functions
set_defaults() {
  ENV=development
}

gather_options() {
  while getopts "e:" OPT; do
    case $OPT in
      e)
        ENV=$OPTARG
      ;;
    esac
  done
}

clear_out_containers() {
  local environment=$1

  case $environment in
    'development')
      docker-compose down -v
    ;;
  esac
}
### define functions:end

set_defaults
gather_options $@

case $ENV in
  'development')
    echo "Clearing out old containers"
    clear_out_containers $ENV
    echo "Setting up $ENV containers"
    setup_containers $ENV
  ;;
esac

