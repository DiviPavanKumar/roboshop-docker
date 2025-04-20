#!/bin/bash

# Variables
AMI_ID="ami-0b4f379183e5706b9"   # Amazon Linux 2 AMI (replace with CentOS 8 if preferred)
INSTANCE_TYPE="t2.micro"
KEY_NAME="devops"
SECURITY_GROUP="Allow-all"
REGION="us-east-1"
TAG="Docker-Setup-Instance"


# Launch EC2 instance
aws ec2 run-instances \
  --image-id "$AMI_ID" \
  --instance-type "$INSTANCE_TYPE" \
  --key-name "$KEY_NAME" \
  --security-group-ids "$SECURITY_GROUP" \
  --region "$REGION" \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$TAG}]" \
  --user-data "$USER_DATA" \
  --count 1