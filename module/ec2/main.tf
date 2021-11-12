resource "aws_instance" "my_ec2" {
  #count                  = var.instance_count
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  #user_data              = file("user_data-scripts.sh")

  tags = merge(var.tags,
    tomap({
      "Name" = "${var.ec2_name}"
    })
  )
}
