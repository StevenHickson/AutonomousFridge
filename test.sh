#!/bin/bash

mkdir -p /dev/shm/images
raspistill -o /dev/shm/images/test.jpg
python detectFruit.py http://YOUR-EXTERNAL-IP:5005/images/test.jpg
