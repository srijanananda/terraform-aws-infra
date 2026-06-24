variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"  # Mumbai
}

variable "project_name" {
  description = "Project name used to tag all resources"
  type        = string
  default     = "my-tf-project"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance (Amazon Linux 2023, ap-south-1)"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"  # Amazon Linux 2023 in Mumbai
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Free tier eligible
}