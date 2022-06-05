#!/usr/bin/env bash

WORKDIR=/home/ec2-user/temp
cd $WORKDIR

# docker-compose-blue.yml을 통해 실행된 컨테이너들의 목록
IS_BLUE_RUNNING=$(docker-compose -p blue -f docker-compose-blue.yml ps | grep Up)

# 블루가 가 실행되지 않았다면 그린을 내리고 블루를 실행
# 그렇지 않다면 블루를 내리고 그린을 실행

if [ -z "$IS_BLUE_RUNNING" ]; then
  docker-compose -p green -f docker-compose-green.yml up -d 
  # 슬립을 통해 그린이 완벽히 실행될 때까지의 유예를 줌
  sleep 10
  docker-compose -p blue -f docker-compose-blue.yml down
else
  docker-compose -p blue -f docker-compose-bule.yml up -d 
  # 슬립을 통해 블루가 완벽히 실행될 때까지의 유예를 줌
  sleep 10
  docker-compose -p green -f docker-compose-green.yml down
fi

