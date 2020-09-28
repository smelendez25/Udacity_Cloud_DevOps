## Problem Description
Your company is creating an Instagram clone called Udagram. Developers pushed the latest version of their code in a zip file located in a public S3 Bucket.
You have been tasked with deploying the application, along with the necessary supporting software into its matching infrastructure.
This needs to be done in an automated fashion so that the infrastructure can be discarded as soon as the testing team finishes their tests and gathers their results.

## Project Requirements
Create a Launch Configuration in order to deploy four servers, two located in each of
your private subnets. The launch configuration will be used by an auto-scaling group. You'll need two vCPUs and at least 4GB of RAM. The Operating System to be used is Ubuntu 18. So, choose an Instance size and Machine Image (AMI) that best fits this spec. Be sure to allocate at least 10GB of disk space so that you don't run into issues.

## Architecture
![Architecture](./Diagram.png)

### Files included:

1 Network.yaml
2 Network-params.json
3 Services.yaml 
4 Services-params.json
5 Run-networks.sh
6 Run-services.sh
7 Diagram.png

### Running the project:

1. Execute network infrastructure stack.
  Usage: run-networks.sh create

2. Once step 1 is succesfully completed, execute services infrastructure stack
  Usage: services.yaml create

### Output
Udagram website URL.
