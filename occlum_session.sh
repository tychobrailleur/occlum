#!/usr/bin/env bash

cd /tmp
rm -rf sample_instance
occlum new sample_instance
cd sample_instance 
cp /occlum/demos/hello_c/hello_world.c .
occlum-gcc -o hello_world hello_world.c
cp hello_world image/bin
occlum build 
occlum run ldd /bin/hello_world
