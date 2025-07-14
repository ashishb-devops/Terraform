# AWS region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

# AMI ID
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

# Instance type
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

# Key value pair name
variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}
