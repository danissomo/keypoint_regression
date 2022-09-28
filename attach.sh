#!/bin/bash
docker exec -it keypoints_container /bin/bash -c "cd /home/keypoint_regression; /bin/bash --init-file ./init_file.sh;"
