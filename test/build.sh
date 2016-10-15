#!/bin/bash

curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": '"\"$TRAVIS_BRANCH"\"'}' -X POST https://registry.hub.docker.com/u/evergreenitco/fluentd-kubernetes-coreos-secure/trigger/d8526762-e5dd-44c2-8235-0b079b35eae0/
