output "bucket_id" {
  description = "The name/ID of the compliant S3 bucket"
  value       = aws_s3_bucket.compliant_bucket.id
}

output "bucket_arn" {
  description = "The ARN of the compliant S3 bucket"
  value       = aws_s3_bucket.compliant_bucket.arn
}

output "encryption_configuration" {
  description = "Server-side encryption configuration ID (SC-28)"
  value       = aws_s3_bucket_server_side_encryption_configuration.compliant_encryption.id
}
