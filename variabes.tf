variable "platform_name" {
  type = string
}
variable "environment" {
  type = string
}
variable "team" {
  type = string
}
variable "layer" {
  type = string
}
variable "region" {
  type = string
}

///// vpc
/*
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}
variable "tennancy" {
  type    = string
  default ="dedicated"
}
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}*/
variable "vpc_id" {
  type        = string   
  description = "vpc-id"
  default = ""
}

variable "key_name" {}

/////EC2
variable "instance_count" {
  type        = number
  description = "EC2 instance count"
  default     = 1
}

variable "ami_id" {
  type        = string
  description = "AMI to use on webserver instance"
  default     = "ami-09e67e426f25ce0d7"
}

variable "instance_type" {
  type          = string
  description   = "Instance type"
  default       = "t2.micro"
}

variable "key_pair_name" {
  type = string
}

//subnet
variable "subnet_id" {
  default = ""
}
/*
variable "public_ip_assign" {
    type    = bool
    default = true 
}

variable "az" {
    type    = string
    default = "us-east-1b"
}

variable "public_ip_asgn" {
    type    = bool
    default = true 
}
*/
//security group


variable "sg_description" {}

variable "sg_data" {
  type = map(any)
}

variable "ec2_data" {
  type = map(any)
}
