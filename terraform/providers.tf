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
    # It's a best practice to store and retrive this keys using AWS Secrets Manager
    access_key = "" 
    secret_key = ""
}