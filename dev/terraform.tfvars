platform_name = "aws"
environment   = "dev"
team          = "devops"
layer         = "web"
region        = "us-east-1"

sg_description = "Allow traffic"

key_pair_name     = "aws-dev-key"

//VPC, Public Subnets, Private Subnets
vpc_id = "vpc-a61eabdb"
//vpc_cidr               = "10.0.0.0/16"
# availability_zone    = ["us-east-1a", "us-east-1b"]
//az = "us-east-1a"

/*
//ec2
instance_count      = 1
instance_type       = "t2.medium"
ami_i               = "ami-09e67e426f25ce0d7"
subnet_id           = "10.0.1.0/24"
*/
key_name = "my-key"

//security groups 

sg_data = {
    "0" = {
        sg_name        = "http&https-sg"
        sg_description = "allow_http_https_ssh"
        
        sg_ingress = {
            "0" = {
                description = "allow http"
                from_port   = "8080"
                to_port     = "8080"
                protocol    = "tcp"
                cidr_blocks = "0.0.0.0/0"
            },
            "1" = {
                description      = "allow https"
                from_port        = "443"
                to_port          = "443"
                protocol         = "tcp"
                cidr_blocks      = "0.0.0.0/0"
            },
            "3" = {
                description      = "allow ssh"
                from_port        = "22"
                to_port          = "22"
                protocol         = "tcp"
                cidr_blocks      = "0.0.0.0/0"
            }
        }
        sg_egress = {
            "0" = {
                cidr_blocks = "0.0.0.0/0"
                description = "Some description"
                from_port   = "0"
                to_port     = "0"
                protocol    = "-1"
            }
        }
    }
}


ec2_data = {
    "0" = {
        ec2_name       = "ch-ec2"
        ami_id        = "ami-09e67e426f25ce0d7"
        instance_type = "t2.micro"
        subnet_id     = "subnet-1556041b"
        sg_name_key   = "0"
    },
    "1" = {
        ec2_name       = "ch-ec2-01"
        ami_id        = "ami-09e67e426f25ce0d7"
        instance_type = "t2.micro"
        subnet_id     = "subnet-f447ebc5"
        sg_name_key   = "0"
    }
}