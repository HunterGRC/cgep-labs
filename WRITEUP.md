# CGE-P Lab Writeups

## Lab 4.4: Chain of Custody
- **Authenticity:** Fulcio OIDC cert in `.sig.bundle` tied to GitHub Actions.
- **Integrity:** SHA-256 hash matches `.sha256` and `receipt.json`.
- **Timeliness:** Rekor transparency log timestamp in `.sig.bundle`.
- **Preservation:** S3 Object Lock `RetainUntilDate` on the vault bucket.
