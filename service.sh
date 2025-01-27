#!/bin/bash

case "$1" in
    develop)
        docker-compose stop

        NETWORK_NAME=getprospect_bridge
        if [ -z $(docker network ls --filter name=^${NETWORK_NAME}$ --format="{{ .Name }}") ] ; then 
            docker network create ${NETWORK_NAME} ; 
        fi

        docker-compose build && GETPROSPECT_ENV=serve docker-compose up -d --remove-orphans
        ;;
    debug)
        docker-compose stop

        NETWORK_NAME=getprospect_bridge
        if [ -z $(docker network ls --filter name=^${NETWORK_NAME}$ --format="{{ .Name }}") ] ; then 
            docker network create ${NETWORK_NAME} ; 
        fi

        docker-compose build && GETPROSPECT_ENV=serve docker-compose up -d --remove-orphans
        ;;
    production)
        docker build . -t getprospect-slatedoc
        docker run --rm --name slate -v $(pwd)/build:/srv/slate/build -v $(pwd)/source:/srv/slate/source getprospect-slatedoc build
        ;;
    logs)
        docker-compose logs --tail 30 -f doc
        ;;
    stop)
        docker-compose stop
        ;;
  *)
        echo "Usage: service.sh {develop|debug|production|logs|stop}" >&2
        exit 1
        ;;
esac

exit 0