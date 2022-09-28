#!/bin/bash
docker start keypoints_container
docker exec -it keypoints_container /bin/bash -c "echo \"192.168.131.1 cpr-fssl01\" >> /etc/hosts"
