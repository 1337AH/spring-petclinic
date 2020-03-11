#!/bin/bash

sudo apt-get update && apt-get install -y python-pip
sudo pip install awscli --ignore-installed six

export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}
export AWS_SECRET_ACCESS_KEY=${AWS_ACCESS_KEY_ID}

sudo aws s3 cp target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar s3://elasticbeanstalk-petclinic/
# [OPTIONAL]
# ----------------------------------------------------
# aws configure set aws_access_key_id AWS_ACCESS_KEY_ID
# aws configure set aws_secret_access_key aws_secret_access_key
# aws configure set default.region AWS_DEFAULT_REGION
# ----------------------------------------------------