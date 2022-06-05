#!/usr/bin/env bash

WORKDIR=/home/ec2-user/temp

cd $WORKDIR
docker build -t 5h5ong/docker-test:nextjs-test .