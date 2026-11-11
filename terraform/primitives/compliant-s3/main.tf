terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region  = "us-east-1"
  default_tags {
    tags = {
      Project            = "cgep-lab"
      Environment        = "sandbox"
      ManagedBy          = "terraform"
      ComplianceScope    = "cge-p-lab"
      DataClassification = "confidential"
      ControlId          = "SC-28"
    }
  }
}
data "aws_caller_identity" "current" {}
resource "aws_s3_bucket" "compliant_bucket" {
  bucket = "cgep-lab-2-3-compliant-${data.aws_caller_identity.current.account_id}"
}
resource "aws_s3_bucket_server_side_encryption_configuration" "compliant_encryption" {
  bucket = aws_s3_bucket.compliant_bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "aws:kms"
    }
    bucket_key_enabled = true
  }
}
resource "aws_s3_bucket_versioning" "compliant_versioning" {
  bucket = aws_s3_bucket.compliant_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_public_access_block" "compliant_public_block" {
  bucket                  = aws_s3_bucket.compliant_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
