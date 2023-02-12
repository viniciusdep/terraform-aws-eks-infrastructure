#===============CRIAÇÃO DO NATGATEWAY===============#
# Ading an Elastip IP and creating a NatGateway for secure communication

resource "aws_nat_gateway" "natgw-1A-vdep" {
    allocation_id = aws_eip.elastic-ip1A-vdep.id
    subnet_id     = aws_subnet.public_1.id

    tags = {
        Name = var.natgw-1a_tag
    }
}

resource "aws_nat_gateway" "natgw-1C-vdep" {
    allocation_id = aws_eip.elastic-ip1C-vdep.id
    subnet_id     = aws_subnet.public_2.id

    tags = {
        Name = var.natgw-1c_tag
    }
}