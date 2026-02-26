#!/bin/bash

BUCKET_NAME=my-aws-bucket-12345
REGION=us-east-1

# Create bucket
aws s3api create-bucket \
  --bucket $BUCKET_NAME \
  --region $REGION \
  --create-bucket-configuration LocationConstraint=$REGION

echo "S3 bucket $BUCKET_NAME created successfully!"


chmod +x create-bucket.sh
./create-bucket.sh
