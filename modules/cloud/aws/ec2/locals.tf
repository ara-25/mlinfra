locals {
  common_ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH Access allowed from anywhere"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = var.ec2_application_port
      to_port     = var.ec2_application_port
      protocol    = "tcp"
      description = "HTTP Access to the application allowed from anywhere"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Application can access anything on internet"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]

  rds_ingress_rules = [{
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    description = "Allow RDS access from within VPC"
    cidr_blocks = [var.vpc_cidr_block]
  }]

  ingress_rules = var.enable_rds_ingress_rule ? concat(local.common_ingress_rules, local.rds_ingress_rules) : local.common_ingress_rules
}
