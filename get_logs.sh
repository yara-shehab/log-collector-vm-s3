#!/bin/bash
# Define the EC2 instance ID and S3 bucket name
INSTANCE_ID="i-0b2f5d7a9146d23ec"
BUCKET_NAME="bucket-yarashehab"
COMMAND="sudo cp -r /var/log/* /home/ec2-user/"
INSTANCE_DNS="ec2-54-157-184-228.compute-1.amazonaws.com"


# Get the current date and time to use as a prefix for the log file name
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Create a temporary directory to store the log file
TEMP_DIR=$(mktemp -d)

# Connect to the instance and run the command to copy log files into the home directory for ec2-user
ssh -i my-key-pair.pem ec2-user@$INSTANCE_DNS "$COMMAND"

# Use SSH to copy the log file from the EC2 instance to the local temp directory
scp -i my-key-pair.pem ec2-user@$INSTANCE_DNS:/home/ec2-user/* $TEMP_DIR

# Use the AWS CLI to upload the log file to the S3 bucket
aws s3 cp $TEMP_DIR s3://$BUCKET_NAME/ --recursive

# Remove the temporary directory
rm -rf $TEMP_DIR



