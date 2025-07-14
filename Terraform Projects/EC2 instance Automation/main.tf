# Use the AWS provider
provider "aws" {
  region = var.aws_region
}

# Use the default VPC
resource "aws_default_vpc" "default" {}

# Create a security group to allow SSH (22) and HTTP (80)
resource "aws_security_group" "vm_sg" {
  name        = "vm_sg"
  description = "Allow SSH and HTTP"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vm_sg"
  }
}

# Launch an EC2 instance
resource "aws_instance" "myappserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.vm_sg.name]

  tags = {
    Name = "Terraform-app-EC2"
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp2"
  }
}
