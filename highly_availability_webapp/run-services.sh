#!/bin/bash

STACK_NAME="highly-available-webapp-servers"
ACTION=$1

case $ACTION in

  create)
    aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://services.yaml \
    --parameters file://services-params.json \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
    --region=us-west-2
    ;;

  update)
    aws cloudformation update-stack \
    --stack-name $STACK_NAME \
    --template-body file://services.yaml \
    --parameters file://services-params.json
    ;;

  delete)
    aws cloudformation delete-stack \
    --stack-name $STACK_NAME
    ;;

  *)
    echo -n "unknown argument, expecting (create | update | delete)"
    ;;
esac
