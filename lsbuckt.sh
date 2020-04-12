#!/bin/bash

cd /home/elkasaby/Desktop/Desktop/ITI/django/diployinDjangoProject

~/.local/bin/aws s3 ls > bucket.txt


bucketName=$(awk '$3 ~ /elasticbeanstalk/ {print $3}' bucket.txt)

if [ -z "$bucketName" ]
then
      echo "Not Createted Yet"
else
      sed -i "s/^    bucket_name:.*/    bucket_name: \"$bucketName\"/" .travis.yml
    #   crontab -r
fi