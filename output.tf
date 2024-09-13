output "ec2-public-ip-1" {
  value = aws_instance.ec2-public1.public_ip
}

output "ec2-public-ip-2" {
  value = aws_instance.ec2-public2.public_ip
}

