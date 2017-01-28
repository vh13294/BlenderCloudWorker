#!/bin/bash
sudo gcsfuse blenderbucket /mnt/blender_bucket
cd /home/projectcloudbristol/test_worker/
./internalip > ip.txt
