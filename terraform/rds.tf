#===============RDS_DATABASE===============#

resource "aws_db_subnet_group" "db_subnet-vdep" {
    name       = var.rds_db_subnet_tag
    subnet_ids = [aws_subnet.Subnet-DB-1A-vdep.id, aws_subnet.Subnet-DB-1C-vdep.id]

    tags = {
        Name = var.rds_db_subnet_tag
    }
}

resource "aws_db_instance" "app" {
    allocated_storage      = var.rds_allocated_storag
    max_allocated_storage  = var.rds_max_allocated_storage
    engine                 = var.rds_engine
    engine_version         = var.rds_engine_version
    instance_class         = var.rds_instance_class
    name                   = var.db_name
    username               = var.db_user
    password               = var.db_password
    skip_final_snapshot    = true
    multi_az               = true
    db_subnet_group_name   = aws_db_subnet_group.db_subnet-vdep.id
    vpc_security_group_ids = [aws_security_group.RDS-SG-vdep.id, aws_vpc.my-app-vpc.default_security_group_id]
    identifier             = var.rds_identifier
    tags = {
        Name = var.rds_tag 
    }
}