# OSCAL Documentation Layer (Lab 6.1)

## Component Definitions
- **`oscal/components/compliant-s3.json`**: Describes the `terraform/primitives/compliant-s3` module and maps controls `sc-28`, `ac-3`, `au-3`, and `cm-6` to their enforcing Terraform resources.

## Profiles
- **`oscal/profiles/cge-p-minimum.json`**: Imports `sc-28`, `ac-3`, `au-3`, and `cm-6` from the NIST SP 800-53 Rev 5 catalog.

## Evidence Location
- **Signed Vault Bundle**: `s3:///`
- **Repository Receipt**: `evidence/lab-4-4/receipt.json` (verified via `scripts/verify-evidence.sh`).
