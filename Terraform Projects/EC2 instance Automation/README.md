# Terraform EC2 instance automation
This project uses Terraform to automate the creation of an EC2 instance in AWS. 

## 📋 Description

This Terraform project performs the following tasks in AWS:

- ✅ Creates a default VPC (if not already present)
- ✅ Creates a Security Group allowing:
  - SSH (Port 22)
  - HTTP (Port 80)
- ✅ Launches an EC2 Instance
- ✅ Outputs:
  - EC2 Instance Public IP
  - EC2 Instance ID

---

## 📦 Prerequisites

Before using this project, ensure you have:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured (`aws configure`)
- An AWS IAM user with permission to launch EC2 instances

## 🚀 Commands Used

terraform init
terraform plan
terraform apply
terraform destroy


## 📤 Outputs
  
After running the terraform apply, Terraform will provision the ec2 instance and display below details:
- ✅ EC2 Instance Public IP
- ✅ EC2 Instance ID

