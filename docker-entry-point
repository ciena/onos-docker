#!/bin/bash

# If there is an environment variable specified this will contain a list
# of apps to auto start (above the core ones in the image)
if [ -n "$ONOS_APPS" ]; then
  for app in ${ONOS_APPS//,/ }; do
    if [[ "$app" =~ \. ]]; then
      touch $HOME/onos/apps/$app/active
    else
      touch $HOME/onos/apps/org.onosproject.$app/active
    fi
  done
fi

if [ $# -eq 0 ]; then
  exec ./bin/onos-service
else
  exec $@
fi
