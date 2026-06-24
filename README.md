# 🏗️ Terraform AWS Infrastructure

Provisions a complete AWS environment using Terraform:
- ✅ VPC with public subnet, Internet Gateway & Route Table
- ✅ EC2 instance (Amazon Linux 2023) with Apache web server
- ✅ S3 bucket with versioning & public access blocked

## Architecture
VPC (10.0.0.0/16)
  └── Public Subnet (10.0.1.0/24)
        └── EC2 (t2.micro) + Security Group
S3 Bucket (private, versioned)

## Usage
```bash
aws configure
terraform init
terraform plan
terraform apply
```

## Requirements
- Terraform >= 1.3
- AWS CLI configured

## File Structure
terraform-aws-infra/
├── providers.tf     # AWS + random provider
├── variables.tf     # All input variables
├── vpc.tf           # VPC, Subnet, IGW, Route Table
├── ec2.tf           # Security Group + EC2 instance
├── s3.tf            # S3 bucket + versioning
├── outputs.tf       # Outputs (IPs, IDs, bucket name)
├── README.md        # Portfolio documentation
└── .gitignore       # Excludes state files & secrets
