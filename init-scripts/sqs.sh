#!/bin/bash

echo "-------------------- START SQS QUEUE CREATION ------------------------"

QUEUES_NAMES=(
  "default_queue"
)

for QUEUE in ${QUEUES_NAMES[*]}; do
  awslocal sqs create-queue --queue-name ${QUEUE}
done

echo "-------------------- END SQS QUEUE CREATION ------------------------
"
