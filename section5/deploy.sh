#!bin/bash
ls
aws cloudformation create-stack --stack-name section$1 --template-body file://iam.yml --capabilities CAPABILITY_NAMED_IAM