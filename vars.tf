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














variable "bastion_image" {
    default     = "ami-0aa7d40eeae50c9a9"
    type        = string
    description = "Imagem para o bastion"
}
# variable "my_key" {
#     default     = "NOME-DA-PRIVATE-KEY"
#     type        = string
#     description = "Minha chave .pem"
# }

variable "db_user" {
    default     = "admin"
    type        = string
    description = "Nome do meu db"

}

variable "db_name" {
    default     = "myapp"
    type        = string
    description = "Nome do meu db"

}

variable "db_password" {
    default     = "admin123"
    type        = string
    description = "senha do db"

}