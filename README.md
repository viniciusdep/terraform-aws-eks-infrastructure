# Terraform Infrastructure using AWS

#### This reopsitory is a simple way to give a perspective of what we can do using Terraform to provisioning a complete infrastructure in aws. 
##### Versions
###### Python 3.8.10
###### Terraform v1.3.8 on linux_amd64
###### Docker version 20.10.17, build 100c701

#### Frist: Dockerfile with the application
###### There are a simple FLASK API running on port 5000 by default with the following endpoints to test: /app /healthcheck /swagger
###### in /app you'll find a simple Hello World!
###### in /healthcheck you can test the healhty 
###### in /swagger you can find a simple documentation of each endpoint 
###### also I gave you the requirements.txt with all needed instalations
###### Here you can found the image on DockerHub: https://hub.docker.com/repository/docker/viniciusdep/myhello/general

#### Second: Kubernetes Manifest
###### There are a app.yaml with a deployment and a service, I created as well a configmap just to print some environment variables, as such:
###### hello: "Hello World!" | my_full_name: "Hi! I'm Vinicius de Paula"
###### Here is an example printing these variables after apply all yaml files on your cluster k8s

###### $  kubectl exec pod/myapp -- printenv
###### SIMPLE_GREETING_4_YOU=Hello World!
###### MY_NAME=Hi! I'm Vinicius de Paula
###### Obs: I personally recommend you define these variables as opaque in configmap manifests or encrypt using base64 in production environments

#### Third: Terraform
###### There are lots of files, but basically we are creating a 3 layer architecture using the application in docker, deployed using eks on ir own VPC and subnets, a RDS (is not useful for my app) using it's own subnets and a bastion host to restric connection, and all components that are important for us, such as nat gateways, internet gateway, route table and also a s3 to store our tf.state in case of incidents. 

###### To make quick ajusts, all of variables are displayed inside "infrastructure.tfvars". 

###### There is a refference architecture used to create this Infrastructure

![Alt text](EKS-arhitecture-overview.png?raw=true "AWS Architecture with EKS")