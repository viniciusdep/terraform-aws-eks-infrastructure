#===============BASTION HOST===============#
# Known as jump box, this is the only way no connect via ssh into the database

resource "aws_instance" "bastion-vdep" {

    ami                         = var.bastion_image
    instance_type               = var.bastion_instance_type
    subnet_id                   = aws_subnet.public_1.id
    vpc_security_group_ids      = [aws_security_group.SG-bastion-host-vdep.id]
    associate_public_ip_address = true
    depends_on                  = [aws_db_instance.app]
    #key_name                    = "my-key"

    tags = {
        Name = var.bastion_tag
    }
    root_block_device {
        volume_size           = var.bastion_volume_size
        delete_on_termination = true
    }