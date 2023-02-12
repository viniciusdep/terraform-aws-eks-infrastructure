##### VARS_FILE #####
#--------------------
#--------VPC---------
variable "vpc_cird_block" {
    description = "cidr for the vpc"
}

variable "vpc_tag_name" {
    description = "cidr for the vpc"
    type = string
}

#--------PUBLIC_SUBNETS---------
variable "public_subnet_1_cird_block" {
    description = "cidr for the public subnet 1"
}

variable "public_subnet_1_az" {
    description = "cidr for the public subnet 1"
}

variable "public_subnet_2_cird_block" {
    description = "cidr for the public subnet 1"
}

variable "public_subnet_2_az" {
    description = "cidr for the public subnet 1"
}


#--------PRIVATE_SUBNETS---------
variable "private_subnet_1_cird_block" {
    description = "cidr for the public subnet 1"
}

variable "private_subnet_1_az" {
    description = "cidr for the public subnet 1"
}

variable "private_subnet_2_cird_block" {
    description = "cidr for the public subnet 1"
}

variable "private_subnet_2_az" {
    description = "cidr for the public subnet 1"
}

#--------DB_SUBNETS---------
variable "db_subnet_1_cird_block" {
    description = "cidr for the public subnet 1"
}

variable "db_subnet_1_az" {
    description = "cidr for the public subnet 1"
}

variable "db_subnet_2_cird_block" {
    description = "cidr for the public subnet 1"
}

variable "db_subnet_2_az" {
    description = "cidr for the public subnet 1"
}

#--------SECURITY_GROUPS---------
variable "rds_sg_name" {
    description = "cidr for the public subnet 1"
}

variable "rds_sg_tag" {
    description = "cidr for the public subnet 1"
}
variable "public_sg_name" {
    description = "cidr for the public subnet 1"
}

variable "public_sg_tag" {
    description = "cidr for the public subnet 1"
}

variable "private_sg_name" {
    description = "cidr for the public subnet 1"
}

variable "private_sg_tag" {
    description = "cidr for the public subnet 1"
}

#--------ROUTE_TABLES---------

variable "public_rt_cidr_block" {
    description = "cidr for the public subnet 1"
}

variable "public_rt_tag" {
    description = "cidr for the public subnet 1"
}

variable "private_rt_1_cidr_block" {
    description = "cidr for the public subnet 1"
}

variable "private_rt_1_tag" {
    description = "cidr for the public subnet 1"
}

variable "private_rt_2_cidr_block" {
    description = "cidr for the public subnet 1"
}

variable "private_rt_2_tag" {
    description = "cidr for the public subnet 1"
}

#--------BASTION_HOST---------

# variable "my_key" {
#     default     = "NOME-DA-PRIVATE-KEY"
#     type        = string
#     description = "Minha chave .pem"
# }
variable "bastion_instance_type"{
    description = "instance family for bastion host "
}
variable "bastion_volume_size"{
    description = "EBS volume size for bastion hosts"
}
variable "bastion_tag"{
    description = "Bastion host tag name"
}
variable "bastion_image" {
    default     = "ami-0aa7d40eeae50c9a9"
    type        = string
    description = "Imagem para o bastion"
}


#--------EKS---------
variable "eks_cluster_name"{
    description = "Eks cluster name"
}


#--------NODE_GROUP---------
variable "node_group_name"{
    description = "Name of the node group"
}

variable "node_group_instance_types"{
    description = "instance family for node group instances"
}

variable "node_group_ami_type"{
    description = "AMI type"
    default = "AL2_x86_64"
}

variable "node_group_capacity_type"{
    description = "privisioning type"
    default = "ON_DEMAND"
}

variable "node_group_disk_size"{
    description = "size disk for instances"
}

variable "node_group_scaling_desired_size"{
    description = "Desired amount of nodes on eks"
}

variable "node_group_scaling_max_size"{
    description = "Max amount of nodes on eks"
    default = "ON_DEMAND"
}

variable "node_group_scaling_min_size"{
    description = "Min amount of nodes on eks"
}

#--------ELASTIC_IPS---------
variable "eip_1a_tag"{
    description = "Tag name for elastic ip on us-east-1a"
}

variable "eip_1c_tag"{
    description = "Tag name for elastic ip on us-east-1c"
}

#--------IGW---------
variable "igw_tag"{
    description = "Tag name for internet gateway"
}


#--------NAT_GATEWAY---------
variable "natgw-1a_tag"{
    description = "Tag name for natgw in us-east-1a"
}

variable "natgw-1c_tag"{
    description = "Tag name for natgw in us-east-1c"
}


#--------RDS--------

variable "db_user" {
    default     = "admin"
    type        = string
    description = "default db username"

}

variable "db_name" {
    default     = "myapp"
    type        = string
    description = "default db name"

}

variable "db_password" {
    default     = "admin123"
    type        = string
    description = "default db password"

}

variable "rds_allocated_storage" {
    description = "Initial rds storage"

}

variable "rds_max_allocated_storage" {
    description = "Max rds storage"

}

variable "rds_engine" {
    description = "Default rds engine"

}

variable "rds_engine_version" {
    description = "Default rds engine version"

}

variable "rds_instance_class" {
    description = "Default rds instance family"

}

variable "rds_identifier" {
    description = "rds identifier"

}
variable "rds_tag" {
    description = "Tag name for rds"

}
variable "rds_db_subnet_tag" {
    description = "Tag name for rds subnet"

}
