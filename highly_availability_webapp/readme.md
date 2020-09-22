## Problem Description
Your company is creating an Instagram clone called Udagram. Developers pushed the latest version of their code in a zip file located in a public S3 Bucket.
You have been tasked with deploying the application, along with the necessary supporting software into its matching infrastructure.
This needs to be done in an automated fashion so that the infrastructure can be discarded as soon as the testing team finishes their tests and gathers their results.

## Project Requirements
Create a Launch Configuration in order to deploy four servers, two located in each of
your private subnets. The launch configuration will be used by an auto-scaling group. You'll need two vCPUs and at least 4GB of RAM. The Operating System to be used is Ubuntu 18. So, choose an Instance size and Machine Image (AMI) that best fits this spec. Be sure to allocate at least 10GB of disk space so that you don't run into issues.

## Architecture
![Architecture](./infrastructure-diagram.png)

### Files included:

- network.yaml - CloudFormation network infrastructure stack description.
- network-parameters.json - Parameters file for the network infrastructure stack
- services.yaml - CloudFormation services infrastructure stack description
- services-parameters.json - Parameters file for the services infrastructure stack
- run-networks.sh - bash script for managing network infrastructure stack
- run-services.sh - bash script for managing services infrastructure stack
- infrastructure-diagram.png - infrastructure diagram
- ELB_and_AutoScaling_In_VPC.template - elastic load balancer auto scaling group example

### Running the project:

1. Execute network infrastructure stack.
  Usage: run-networks.sh create

2. Upon step 1 successful completion, execute services infrastructure stack
  Usage: services.yaml create

### Output
Services stack outputs the final website URL.
