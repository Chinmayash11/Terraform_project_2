/*variable "vpc_id" {}
variable "name" {
  type = string
}

locals {
  ingress_rules = [{
     port        = 443
     description = "port 443"
  },
  {
     port        = 80
     description = "port 80"
  }]
}
*/

variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = "Managed by Terraform"
}

variable "vpc_id" {
  type = string
}

variable "sg_ingress" {
  type = map(any)
}

variable "sg_egress" {
  type = map(any)
}

variable "tags" {
  type = map(string)
}