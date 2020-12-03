#!/bin/bash

source _env.sh

docker build -t $DOCKER_TAG_CONTEXT .

