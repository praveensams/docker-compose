#!/bin/bash

docker-compose up -d --force-recreate
 
docker cp sshserver1:/tmp/authorized_keys .
  
docker cp authorized_keys  sshserver2:/home/docker_root/.ssh/
   
   
