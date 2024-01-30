#!/bin/bash

docker build git@github.com:Cuile/Docker-Image.git#:Python/base/docker \
                --build-arg IMAGE=python \
                --tag python:base