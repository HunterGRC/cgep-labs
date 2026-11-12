# AWS Security Services Baseline (Lab 5.2)

## Control Mapping (NIST SP 800-53 Rev 5)
- **AWS CloudTrail (`cloudtrail.tf`):** `AU-2` (Event Logging), `AU-12` (Audit Record Generation), and `AU-10` (Non-repudiation via `enable_log_file_validation = true`).
- **AWS Security Hub (`security_hub.tf`):** `RA-5` (Vulnerability Monitoring and Scanning) and `SI-4` (System Monitoring) via NIST 800-53 Rev 5 and AWS FSBP standards.
- **AWS Config (Optional / Gap Evidence):** `CM-2` (Baseline Configuration), `CM-6` (Configuration Settings), and `CM-8` (System Component Inventory).
