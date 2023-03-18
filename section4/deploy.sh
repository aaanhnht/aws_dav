#!bin/bash
ls
aws cloudformation create-stack --stack-name section$1 --template-body file://cfn_demo.yml --parameters ParameterKey=KeyName,ParameterValue=DemoKeyPair
