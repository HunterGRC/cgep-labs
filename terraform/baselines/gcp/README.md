# GCP Security Services Baseline (Lab 5.4)

## Enforced Preventive Org Policy Constraints
- `storage.uniformBucketLevelAccess = TRUE` (CM-6)
- `iam.disableServiceAccountKeyCreation = TRUE` (AC-2)
- `compute.requireOsLogin = TRUE` (AC-3)

## Audit Logging Lesson
- **Data Access logs are off by default in GCP:** `audit_logs.tf` explicitly enables `DATA_READ`, `DATA_WRITE`, and `ADMIN_READ` for `storage.googleapis.com`, `cloudkms.googleapis.com`, and `iam.googleapis.com` (AU-2).
