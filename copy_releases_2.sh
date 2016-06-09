#!/bin/bash

rm -rf ~/one_projects/onedata/op_worker/rel/op_worker                       && cp -R ~/one_projects/op-worker-2/rel/op_worker                       ~/one_projects/onedata/op_worker/rel/op_worker
rm -rf ~/one_projects/onedata/op_worker/cluster_manager/rel/cluster_manager && cp -R ~/one_projects/op-worker-2/cluster_manager/rel/cluster_manager ~/one_projects/onedata/cluster_manager/rel/cluster_manager
rm -rf ~/one_projects/onedata/op_worker/appmock/rel/appmock                 && cp -R ~/one_projects/op-worker-2/appmock/rel/appmock                 ~/one_projects/onedata/appmock/rel/appmock
rm -rf ~/one_projects/onedata/oz_worker/rel/oz_worker                       && cp -R ~/one_projects/oz-worker/rel/oz_worker                       ~/one_projects/onedata/oz_worker/rel/oz_worker
rm -rf ~/one_projects/onedata/oneclient/debug                               && cp -R ~/one_projects/oneclient/debug                               ~/one_projects/onedata/oneclient/debug
