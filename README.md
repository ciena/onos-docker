# ONOS Docker Image
This contains the files to construct an ONOS docker image that can activate an
initial set of applications on start.

## Overview
This container is based on the default ONOS container from ON.Labs. The difference is that instead of executing the onos-service as the entry point
it invokes a script that checks for the existance of an environment variable
`ONOS_APPS`. If this environment variable is set then the script sets each
application specified in the variable to active so it will be automatically
started when onos service is invoked, which is done after processing the
environment variable.

## Process Execution
If there are options specified to the docker run command it is is assumed
that these represent a command to execute as opposed to the default
onos-service command.

## Docker Compose
A sample docker-compose entry for this container
```
controller_1:
  image: ciena/onos
  container_name: controller_1
  environment:
    ONOS_APPS: openflow
  labels:
      org.onlabs.cord.name: controller-1
      org.onlabs.cord.type: controller
  restart: on-failure:5
```
