#!/usr/bin/env bash
docker run -it --rm -p 8081:5000 --name web -v ${PWD}:/opt/data/app hunzo/pyoracleclient12 bash
