# Compliant GCS Bucket Module (Lab 2.4)

This module enforces SC-12, SC-13, SC-28, AU-11, CM-6, and AC-3 on a Google Cloud Storage bucket and its dedicated Cloud KMS keyring. It establishes a customer-managed encryption key with automatic 90-day rotation (SC-12, SC-13, SC-28), enforces uniform bucket-level access and public access prevention (AC-3), configures object versioning and environment-validated retention policies (AU-11), and merges mandatory compliance labels that consumers cannot override (CM-6).
