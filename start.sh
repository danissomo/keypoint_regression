#!/bin/bash

docker build . --tag keypoints_image
docker create --gpus all -it -p 1001:1001 --net=host  --ipc="host"  -v ~/handle_keypoints_node:/home/keypoint_regression --name=keypoints_container keypoints_image /bin/bash
docker start keypoints_container
docker exec -it keypoints_container /bin/bash -c "echo \"10.147.18.169 cpr-fssl01\" >> /etc/hosts"
