#!/bin/bash
python3 tools/rosbag_eval.py rosbag \
    --name yolox-s \
    --exp_file_det src/detector/config.py \
    --ckpt_det weights/yolox-s_door_handle.pth \
    --device_det cuda:0 \
    --conf 0.7 \
    --exp_file_reg src/regressor/config.py \
    --ckpt_reg weights/hrnet_w32_256x192_door_handle.pth \
    --device_reg cuda:0
