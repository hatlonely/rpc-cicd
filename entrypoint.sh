#!/bin/bash

dockerd-entrypoint.sh &

status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start dockerd: $status"
  exit $status
fi

bin/cicd -c config/app.json &

status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start cicd: $status"
  exit $status
fi

# 检查服务状态
while sleep 5; do
  ps aux | grep dockerd | grep -q -v grep
  PROCESS_1_STATUS=$?
  ps aux | grep cicd | grep -q -v grep
  PROCESS_2_STATUS=$?

  if [ $PROCESS_1_STATUS -ne 0 ] || [ $PROCESS_2_STATUS -ne 0 ]; then
    echo "One of the processes has already exited."
    exit 1
  fi
  sleep 60
done
