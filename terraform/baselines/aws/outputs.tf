output "trail_name" { value = aws_cloudtrail.mgmt.name }
output "trail_bucket" { value = aws_s3_bucket.trail.id }
output "securityhub_account_id" { value = aws_securityhub_account.this.id }
