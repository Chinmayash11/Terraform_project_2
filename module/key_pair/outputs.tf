output "private_key" {
  value = tls_private_key.private_key.private_key_pem
}

output "private_key_name" {
  value = aws_key_pair.ec2_keypair.key_name
}
