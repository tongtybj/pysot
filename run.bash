#!/usr/bin/env bash

#--userns=host: https://dockerlabs.collabnix.com/advanced/security/userns/

docker run --name pysot \
       --gpus all \
       --mount type=bind,src=${2:-~/pysot},dst=/root/pysot \
       --mount type=bind,src=${1:-~}/otb,dst=/root/pysot/testing_dataset/OTB100 \
       --shm-size=4g \
       -it --privileged \
       -p 6006:6006 \
       --userns=host \
       pysot
