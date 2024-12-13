resource "aws_instance" "mysql_server" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t3.small"
  tags = {
    ambiente = "dev"
    Name     = "mysql_server"
  }

  subnet_id                   = "subnet-0aa98ddfa4a07b32d"
  associate_public_ip_address = true
  ipv6_address_count          = 1

  vpc_security_group_ids = [aws_security_group.docker_sql_server_sg.id]

  root_block_device {
    volume_size = 10
  }

  key_name  = "porteiro_key"
  user_data = file("user_data.sh")
}