resource "aws_security_group" "docker_sql_server_sg" {
    name        = "docker_sql_server"
    description = "Allow inbound traffic on port 3306"
    vpc_id      = "vpc-0d84787c58a1fa2c0"
    
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["189.6.6.145/32"]
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "docker_sql_server"
    }
}