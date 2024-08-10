#!/bin/bash
source /etc/network_turbo
kill -9 `ps -ef|grep python | awk '{print $2}'`
cd /root/ComfyUI
source activate comfyui
if [ ! -d /root/autodl-fs/models ]; then
    cp -arf /root/models_back /root/autodl-fs/models
    ln /root/autodl-fs/models -s models
fi
python main.py --port 6006
