resource "aws_route_table" "public" {
# The VPC ID.
    vpc_id = aws_vpc.my-app-vpc.id

    route {
        # The CIDR block of the route.
        cidr_block = var.public_rt_cidr_block

        # Identifier of a VPC internet gateway or a virtual private gateway.
        gateway_id = aws_internet_gateway.igw-vdep.id
    }

    # A map of tags to assign to the resource.
    tags = {
        Name = var.public_rt_tag
    }
}

resource "aws_route_table" "private1" {
# The VPC ID.
    vpc_id = aws_vpc.my-app-vpc.id

    route {
        # The CIDR block of the route.
        cidr_block = var.private_rt_1_cidr_block

        # Identifier of a VPC NAT gateway.
        nat_gateway_id = aws_nat_gateway.natgw-1A-vdep.id
    }

    # A map of tags to assign to the resource.
    tags = {
        Name = var.private_rt_1_tag
    }
}

resource "aws_route_table" "private2" {
    # The VPC ID.
    vpc_id = aws_vpc.my-app-vpc.id

    route {
        # The CIDR block of the route.
        cidr_block = var.private_rt_2_cidr_block

        # Identifier of a VPC NAT gateway.
        nat_gateway_id = aws_nat_gateway.natgw-1C-vdep.id
    }

    # A map of tags to assign to the resource.
    tags = {
        Name = var.private_rt_2_tag
    }
}

resource "aws_route_table_association" "public1" {
# The subnet ID to create an association.
    subnet_id = aws_subnet.public_1.id
# The ID of the routing table to associate with.
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public2" {
    # The subnet ID to create an association.
    subnet_id = aws_subnet.public_2.id

    # The ID of the routing table to associate with.
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private1" {
    # The subnet ID to create an association.
    subnet_id = aws_subnet.private_1.id

    # The ID of the routing table to associate with.
    route_table_id = aws_route_table.private1.id
}

resource "aws_route_table_association" "private2" {
    # The subnet ID to create an association.
    subnet_id = aws_subnet.private_2.id

    # The ID of the routing table to associate with.
    route_table_id = aws_route_table.private2.id
}