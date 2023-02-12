#===============CRIAÇÃO DA VPC===============#
# É uma boa pratica isolar a VPC do EKS para simular um datacenter real. 


resource "aws_vpc" "my-app-vpc" {
    cidr_block = var.vpc_cird_block

# Makes your instances shared on the host.
    instance_tenancy = "default"

# Required for EKS. Enable/disable DNS support in the VPC.
    enable_dns_support = true

# Required for EKS. Enable/disable DNS hostnames in the VPC.
    enable_dns_hostnames = true

# Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC.
    assign_generated_ipv6_cidr_block = false
    
    tags = {
        Name = var.vpc_tag_name
    }
}