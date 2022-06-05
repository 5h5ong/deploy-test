#!/usr/bin/env bash

WORKDIR=/home/ec2-user/temp
cd $WORKDIR

# docker-compose-blue.yml을 통해 실행된 컨테이너들의 목록
IS_BLUE_RUNNING=$(docker-compose -p blue -f docker-compose-blue.yml ps | grep Up)
IS_GREEN_RUNNING=$(docker-compose -p green -f docker-compose-green.yml ps | grep Up)

if [ -z "$IS_BLUE_RUNNING" ]; then
  docker-compose -p blue -f docker-compose-blue.yml up -d 
  if [ -n "$IS_GREEN_RUNNING" ]; then
    # 슬립을 통해 블루가 완벽히 실행될 때까지의 유예를 줌
    sleep 10
    docker-compose -p green -f docker-compose-green.yml down
  fi
else
  docker-compose -p green -f docker-compose-green.yml up -d 

  # 슬립을 통해 그린이 완벽히 실행될 때까지의 유예를 줌
  sleep 10
  docker-compose -p blue -f docker-compose-blue.yml down
fi

