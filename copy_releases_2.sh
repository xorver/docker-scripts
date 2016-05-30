#!/bin/bash

rm -rf ~/one_projects/onedata-2/op_worker/rel/op_worker                       && cp -R ~/one_projects/op-worker/rel/op_worker                       ~/one_projects/onedata-2/op_worker/rel/op_worker
rm -rf ~/one_projects/onedata-2/op_worker/cluster_manager/rel/cluster_manager && cp -R ~/one_projects/op-worker/cluster_manager/rel/cluster_manager ~/one_projects/onedata-2/cluster_manager/rel/cluster_manager
rm -rf ~/one_projects/onedata-2/op_worker/appmock/rel/appmock                 && cp -R ~/one_projects/op-worker/appmock/rel/appmock                 ~/one_projects/onedata-2/appmock/rel/appmock
rm -rf ~/one_projects/onedata-2/oz_worker/rel/oz_worker                       && cp -R ~/one_projects/oz-worker/rel/oz_worker                       ~/one_projects/onedata-2/oz_worker/rel/oz_worker
rm -rf ~/one_projects/onedata-2/oneclient/debug                               && cp -R ~/one_projects/oneclient/debug                               ~/one_projects/onedata-2/oneclient/debug
