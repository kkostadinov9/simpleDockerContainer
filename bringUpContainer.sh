#!/bin/bash

docker image build -t apacheimg .

docker container run -d p 8080:80 -- name simplecont apacheimg