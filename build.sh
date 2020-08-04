#!/bin/bash

export REV=`git rev-parse HEAD`
export IMG_NAME=cototal/php-dev:${REV:0:7}
docker build -t $IMG_NAME .
docker push $IMG_NAME
