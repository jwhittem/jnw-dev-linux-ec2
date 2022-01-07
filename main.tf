provider "aws" {
  region = var.region
}

module "label" {
  source  = "cloudposse/label/null"
  version = "0.25.0"

  namespace  = var.namespace
  name       = var.name
  stage      = var.env
  delimiter  = "-"
  attributes = ["ec2"]
}

module "ec2_instance" {
  source = "cloudposse/ec2-instance/aws"
  # Cloud Posse recommends pinning every module to a specific version
  ami                         = var.ami_id
  ami_owner                   = var.ami_owner
  associate_public_ip_address = true
  context                     = module.label.context
  instance_type               = var.instance_type
  root_volume_size            = var.root_volume_size
  security_groups             = var.security_groups
  ssh_key_pair                = var.ssh_key_pair
  subnet                      = var.subnet
  version                     = "0.40.0"
  vpc_id                      = var.vpc_id

  security_group_rules = [
    {
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["98.33.128.0/17"]
    },
    {
      type        = "egress"
      from_port   = 0
      to_port     = 65535
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}
