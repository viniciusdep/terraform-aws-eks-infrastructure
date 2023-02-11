#===============CRIAÇÃO DO BASTION HOST===============#

resource "aws_instance" "bastion-vdep" {

    ami                         = var.bastion_image
    instance_type               = "t2.micro"
    subnet_id                   = aws_subnet.public_1.id
    vpc_security_group_ids      = [aws_security_group.SG-bastion-host-vdep.id]
    associate_public_ip_address = true
    depends_on                  = [aws_db_instance.app]
    #key_name                    = "aws-viniciusdep"

    tags = {
        Name = "bastion-host-vdep"
    }
    root_block_device {
        volume_size           = 8
        delete_on_termination = true
    }