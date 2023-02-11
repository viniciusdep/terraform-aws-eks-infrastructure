#===============CRIAÇÃO DA INTERNET GATEWAY===============#
# As instancias na Subnet pública poderão se comunicar (incoming e outgoing).

resource "aws_internet_gateway" "igw-vdep" {
    vpc_id = aws_vpc.my-app-vpc.id
    tags = {
        Name = "igw-vdep"
    }

}