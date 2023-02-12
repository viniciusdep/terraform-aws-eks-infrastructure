#===============INTERNET GATEWAY===============#
# Allow communication (incoming e outgoing) through public subnets.

resource "aws_internet_gateway" "igw-vdep" {
    vpc_id = aws_vpc.my-app-vpc.id
    tags = {
        Name = var.igw_tag
    }

}