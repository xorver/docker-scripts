#!/bin/bash

~/bamboos/docker/env_up.py -bw ~/op-worker-develop -bcm ~/op-worker-develop/cluster_manager/ -boz ~/globalregistry -bc ~/oneclient -l ~/op-worker-develop/logs ~/docker-scripts/env_description.json
