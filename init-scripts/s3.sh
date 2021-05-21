#!/bin/bash

echo "-------------------- START S3 BUCKET CREATION ------------------------"
BUCKETS_NAMES=(
  "inbox-data"
)

for BUCKET in ${BUCKETS_NAMES[*]}; do
  if awslocal s3 ls "s3://${BUCKET}" 2>&1 | grep -q "NoSuchBucket"; then
    awslocal s3 mb s3://${BUCKET}
  else
    echo "${BUCKET} already exists"
  fi
done

echo "-------------------- END S3 BUCKET CREATION ------------------------
"
