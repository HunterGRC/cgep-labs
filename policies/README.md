# Compliance Policy Library (Labs 3.3 & 3.4)

| Policy File | Cloud | Control ID | Severity | Remediation |
|---|---|---|---|---|
| `sc28_encryption.rego` | GCP | SC-28 | High | Configure CMEK `encryption` block on `google_storage_bucket`. |
| `ac3_no_public.rego` | GCP | AC-3 | Critical | Enforce uniform access & public access prevention; block 0.0.0.0/0 on ports 22/3389. |
| `cm6_required_tags.rego` | GCP | CM-6 | Medium | Include required labels (`project`, `environment`, `managed_by`, `compliance_scope`). |
| `sc28_encryption_aws.rego` | AWS | SC-28 | High | Add `aws_s3_bucket_server_side_encryption_configuration` referencing the bucket. |
| `ac3_no_public_aws.rego` | AWS | AC-3 | Critical | Add `aws_s3_bucket_public_access_block` with all four flags set to `true`. |
| `cm6_required_tags_aws.rego` | AWS | CM-6 | Medium | Include required tags (`Project`, `Environment`, `ManagedBy`, `ComplianceScope`). |
