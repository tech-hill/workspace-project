output "rds_endpoint" {
  value = aws_db_instance.mysql.address
}

output "private_ec2_ip" {
  value = aws_instance.private_ec2.private_ip
}

output "public_ec2_ip" {
  value = aws_instance.public_ec2.public_ip
}