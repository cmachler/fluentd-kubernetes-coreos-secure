#!/bin/bash

if [ "$TRAVIS_EVENT_TYPE" != "pull_request" ]; then

  echo "Starting build on Docker Hub."

  curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": '"\"$TRAVIS_BRANCH"\"'}' -X POST https://registry.hub.docker.com/u/evergreenitco/fluentd-kubernetes-coreos-secure/trigger/"$DOCKER_HUB_TOKEN"/

else

  echo "This is a Pull Request, not starting build on Docker Hub."

fi
