# Compliance Policy Library (Lab 3.3)

| Policy File | Control ID | Severity | Remediation |
|---|---|---|---|
| `sc28_encryption.rego` | SC-28 | High | Add an `encryption { default_kms_key_name = ... }` block referencing a customer-managed `google_kms_crypto_key`. |
| `ac3_no_public.rego` | AC-3 | Critical | Set `uniform_bucket_level_access = true` and `public_access_prevention = "enforced"` on buckets; remove `0.0.0.0/0` from ports 22/3389 on firewalls. |
| `cm6_required_tags.rego` | CM-6 | Medium | Add the four required labels (`project`, `environment`, `managed_by`, `compliance_scope`) to all taggable resources. |
