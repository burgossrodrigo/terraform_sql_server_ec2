output "private_ec2_ip" {
  value = aws_instance.mysql_server.private_ip
}

output "public_ipv4_dns" {
  value = aws_instance.mysql_server.public_dns
}