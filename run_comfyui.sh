#!/bin/bash
source /etc/network_turbo
kill -9 `ps -ef|grep python | awk '{print $2}'`
cd /root/ComfyUI
source activate comfyui
if [ ! -d /root/autodl-tmp/models ]; then
    cp -arf /root/models_back /root/autodl-tmp/models
    ln /root/autodl-tmp/models -s models
fi
python main.py --port 6006
