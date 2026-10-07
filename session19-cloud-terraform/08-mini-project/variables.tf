variable "aws_region" {
  description = "AWS region for the Session 19 mini project."
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type for the web server."
  type        = string
  default     = "t3.micro"
}

variable "bucket_name" {
  description = "Name of the S3 bucket for application assets."
  type        = string
  default     = "session19-mini-app-assets"
}
