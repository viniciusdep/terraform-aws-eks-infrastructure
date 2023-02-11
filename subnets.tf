resource "aws_subnet" "public_1" {
    vpc_id                  = aws_vpc.my-app-vpc.id
    cidr_block              = var.public_subnet_1_cird_block
    availability_zone       = var.public_subnet_1_az
    map_public_ip_on_launch = true
    tags = {
        Name                                     = "public-us-east-1a"
        "kubernetes.io/cluster/eks-cluster-vdep" = "shared"
        "kubernetes.io/role/elb"                 = 1
    }
}

resource "aws_subnet" "public_2" {
    vpc_id                  = aws_vpc.my-app-vpc.id
    cidr_block              = var.public_subnet_2_cird_block
    availability_zone       = var.public_subnet_2_az
    map_public_ip_on_launch = true
    tags = {
        Name                                     = "public-us-east-1c"
        "kubernetes.io/cluster/eks-cluster-vdep" = "shared"
        "kubernetes.io/role/elb"                 = 1
    }
}

resource "aws_subnet" "private_1" {
    vpc_id            = aws_vpc.my-app-vpc.id
    cidr_block        = var.private_subnet_1_cird_block
    availability_zone = var.private_subnet_1_az
    tags = {
        Name                                     = "private-us-east-1a"
        "kubernetes.io/cluster/eks-cluster-vdep" = "shared"
        "kubernetes.io/role/internal-elb"        = 1
    }
}

resource "aws_subnet" "private_2" {
    vpc_id            = aws_vpc.my-app-vpc.id
    cidr_block        = var.private_subnet_2_cird_block
    availability_zone = var.private_subnet_2_az
    tags = {
        Name                                     = "private-us-east-1c"
        "kubernetes.io/cluster/eks-cluster-vdep" = "shared"
        "kubernetes.io/role/internal-elb"        = 1
    }
}

resource "aws_subnet" "Subnet-DB-1A-vdep" {
    availability_zone = var.db_subnet_1_az
    vpc_id            = aws_vpc.my-app-vpc.id
    cidr_block        = var.db_subnet_1_cird_block

    tags = {
        Name = "Subnet-DB-1A-vdep"
    }

}

resource "aws_subnet" "Subnet-DB-1C-vdep" {
    availability_zone = var.db_subnet_2_az
    vpc_id            = aws_vpc.my-app-vpc.id
    cidr_block        = var.db_subnet_2_cird_block

    tags = {
        Name = "Subnet-DB-1C-vdep"
    }

}