variable "aws_region" {
  description = "AWS region for deploying the compliant S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment tag (CM-6 / AU-3)"
  type        = string
  default     = "sandbox"
}

variable "bucket_prefix" {
  description = "Prefix used for the compliant S3 bucket name"
  type        = string
  default     = "cgep-lab-2-3-compliant"
}
