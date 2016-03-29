#!/bin/bash

rm -rf ~/onedata/op_worker/rel/op_worker                       && cp -R ~/op-worker/rel/op_worker                       ~/onedata/op_worker/rel/op_worker
rm -rf ~/onedata/op_worker/cluster_manager/rel/cluster_manager && cp -R ~/op-worker/cluster_manager/rel/cluster_manager ~/onedata/cluster_manager/rel/cluster_manager
rm -rf ~/onedata/op_worker/appmock/rel/appmock                 && cp -R ~/op-worker/appmock/rel/appmock                 ~/onedata/appmock/rel/appmock
rm -rf ~/onedata/oz_worker/rel/oz_worker                       && cp -R ~/globalregistry/rel/oz_worker                  ~/onedata/oz_worker/rel/oz_worker
rm -rf ~/onedata/oneclient/debug                               && cp -R ~/oneclient/debug                               ~/onedata/oneclient/debug
