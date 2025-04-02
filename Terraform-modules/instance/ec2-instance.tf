resource "aws_instance" "myserver" {
    tags = {
        Name = var.iname
    }
    ami = var.ami_id
    instance_type = var.itype
    key_name = var.ikey
    count = var.icount
    security_groups = [var.security_group_id]
    root_block_device {
        volume_size = var.volume_size
    }
}