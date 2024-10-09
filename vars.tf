variable "default_tags" {
  description = "Default tags to apply to all resources"
  type        = map(string)
}

variable "aws_region" {
  description = "The AWS region to deploy in."
  type        = string
  default     = "us-east-1"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "instance_type" {
  type = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
}

