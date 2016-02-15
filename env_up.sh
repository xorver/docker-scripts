#!/bin/bash

~/op-worker/bamboos/docker/env_up.py -bw ~/op-worker -bcm ~/op-worker/cluster_manager/ -bg ~/globalregistry -bc ~/oneclient -l ~/op-worker/logs ~/docker-scripts/env_description.json
