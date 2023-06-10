variable "vpc_id" {
  type = string
}

variable "default_vpc_sg" {
  type = string
  # value usually comes from vpc module as
  # module.vpc_subnet_module.default_security_group_id
}

variable "ec2_subnet_id" {
  type = string
}

variable "ec2_instance_name" {
  type = string
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ec2_user_data" {
  type    = string
  default = <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo yum -y install python3 python3-pip
                python3 -m pip install --upgrade pip
                EOF
}

variable "tags" {
  type = map(string)
  default = {
    Name = "ultimate-mlops-instance"
  }
}

variable "ec2_application_port" {
  type = number
}