resource "aws_security_group" "mysg" {
    name = var.sec_name
    description = "its allows all traffic"
     
     ingress {
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
     }
     egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
     }
}

output "security_group_id" {
  value = aws_security_group.mysg.id  # Output the security group ID
}

