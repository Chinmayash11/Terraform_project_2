output "ec2" {
  value = aws_instance.my_ec2[*].public_ip
}