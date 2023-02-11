############################
# INFRASTRUCTURE VARIABLES
############################

# STATIC INFORMATION
#-----------------------------
# VPC
vpc_cird_block = "10.0.0.0/16"
vpc_tag_name = "my-app-vpc"

# PUBLIC SUBNETS
public_subnet_1_cird_block = "10.0.0.0/24"
public_subnet_1_az = "us-east-1a"
public_subnet_2_cird_block = "10.0.1.0/24"
public_subnet_2_az = "us-east-1c"
# PRIVATE SUBNETS
private_subnet_1_cird_block = "10.0.4.0/24"
private_subnet_1_az = "us-east-1a"
private_subnet_2_cird_block = "10.0.5.0/24"
private_subnet_2_az = "us-east-1c"
# DB SUBNETS
db_subnet_1_cird_block = "10.0.6.0/24"
db_subnet_1_az = "us-east-1a"
db_subnet_2_cird_block = "10.0.7.0/24"
db_subnet_2_az = "us-east-1c"

# SECURITY GROUPS
rds_sg_name = "RDS-SG-vdep"
rds_sg_tag = "RDS-SG-vdep"
public_sg_name = "publicSG-vdep"
public_sg_tag = "publicSG-vdep"
private_sg_name = "SG-bastion-host-vdep"
private_sg_tag = "SG-bastion-host-vdep"

# SECURITY GROUPS
public_rt_cidr_block = "0.0.0.0/0"
public_rt_tag = "public"
private_rt_1_cidr_block = "0.0.0.0/0"
private_rt_1_tag = "private1"
private_rt_2_cidr_block = "0.0.0.0/0"
private_rt_2_tag = "private2"
