# Terraform Infrastructure using AWS

## This reopsitory is a simple way to give a perspective of what we can do using Terraform to provisioning a complete infrastructure in aws. 

# Frist: DOCKERFILE with the application
## There are a simple FLASK API running on port 5000 by default with the following endpoints to test: /app /healthcheck /swagger
## in /app you'll find a simple Hello World!
## in /healthcheck you can test the healhty 
## in /swagger you can find a simple documentation of each endpoint 
## also I gave you the requirements.txt with all needed instalations



## providers:
terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}
