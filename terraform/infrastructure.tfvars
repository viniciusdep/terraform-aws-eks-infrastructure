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

# Bastion Host
bastion_instance_type = "t2.micro"
bastion_volume_size = 8
bastion_tag = "bastion-host-vdep"

# Eks
eks_cluster_name = "eks-cluster-vdep"

# Node Groups
node_group_name = "node-vdep"
node_group_instance_types = "t3.small"
node_group_ami_type = "AL2_x86_64"
node_group_capacity_type = "ON_DEMAND"
node_group_disk_size = 20
node_group_scaling_desired_size = 3
node_group_scaling_min_size = 3
node_group_scaling_max_size = 3

# Elastic IP
eip_1a_tag = "elastic-ip1A-vdep"
eip_1c_tag = "elastic-ip1C-vdep"

# Internet Gateway
igw_tag = "igw-vdep"

# Nat Gateway
natgw-1a_tag = "natgw-vdep1A"
natgw-1c_tag = "natgw-vdep1C"

# RDS
rds_allocated_storage = 10
rds_max_allocated_storage = 50 
rds_engine = "mysql"
rds_engine_version = "8.0.23"
rds_instance_class = "db.t2.micro"
rds_identifier = "app"
rds_tag = "db-vdep"
rds_db_subnet_tag = "db_subnet-vdep"