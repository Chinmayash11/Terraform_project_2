  /*
  variable "instance_count" {
    type        = number
    description = "EC2 instance count"
  }
  */
  variable "ami" {
    type        = string
    description = "AMI to use on webserver instance"
  }
  
  variable "instance_type" {
    type          = string
    description   = "Instance type"
  }
  
  variable "key_name" {
    type = string
}

  variable "subnet_id" {}

  variable "security_group_id" {
    type = string
    description = "create security groups"
  }
  
  variable "tags" {
    type = map(string)
  }

variable "ec2_name" {
  type = string
}

#variable "user_data" {
#  
#}
