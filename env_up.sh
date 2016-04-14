#!/bin/bash

~/one_projects/onedata/bamboos/docker/env_up.py -bw ~/one_projects/op-worker -bcm ~/one_projects/op-worker/cluster_manager/ -boz ~/one_projects/globalregistry -bc ~/one_projects/oneclient -l ~/one_projects/op-worker/logs ~/one_projects/docker-scripts/env_description.json
