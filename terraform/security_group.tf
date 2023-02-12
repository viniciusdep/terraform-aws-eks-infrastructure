#===============CRIAÇÃO DO SECURITY GROUP===============#

//Para o RDS
resource "aws_security_group" "RDS-SG-vdep" {
    name        = var.rds_sg_name
    description = "security group para RDS"
    vpc_id      = aws_vpc.my-app-vpc.id

    ingress {
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = var.rds_sg_tag
    }
}

//Para as subnets públicas
resource "aws_security_group" "publicSG-vdep" {
    name        = var.public_sg_name
    description = "security group para subnets publicas"
    vpc_id      = aws_vpc.my-app-vpc.id

    ingress {
        description = "ssh"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = var.public_sg_tag
    }
}

//Para Bastion Host
resource "aws_security_group" "SG-bastion-host-vdep" {
    name        = var.private_sg_name
    description = "security group Bastion Host"
    vpc_id      = aws_vpc.my-app-vpc.id

    ingress {
        description = "ssh 4 all"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = var.private_sg_tag
    }
}

