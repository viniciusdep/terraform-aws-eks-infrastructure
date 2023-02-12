#===============ELASTIC IPS===============#
# Forces the same IP 

resource "aws_eip" "elastic-ip1A-vdep" {
    depends_on = [aws_internet_gateway.igw-vdep]
    tags = {
        Name = var.eip_1a_tag
    }
}

resource "aws_eip" "elastic-ip1C-vdep" {
    depends_on = [aws_internet_gateway.igw-vdep]
    tags = {
        Name = var.eip_1c_tag
    }
}