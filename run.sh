#!/bin/bash
echo "#=#=#=#=#=#=#=#=#=#=#=#=#=#=#"
echo "# Start Nginx and COEIROINK #"
echo "#=#=#=#=#=#=#=#=#=#=#=#=#=#=#"

# 先にNginxを起動
service nginx start
# COEIROINK起動
./engine/engine
