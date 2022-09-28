#!/bin/bash
docker start keypoints_container
docker exec -it keypoints_container /bin/bash -c "echo \"10.147.18.169 cpr-fssl01\" >> /etc/hosts"
