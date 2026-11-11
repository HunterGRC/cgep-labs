terraform {
  required_version = ">= 1.6"
  required_providers {
    google = { source = "hashicorp/google", version = "~> 5.0" }
  }
}

provider "google" {
  project = "your-actual-gcp-project-id"
  region  = "us-central1"
}

module "data_bucket" {
  source = "../../modules/complian  source ket"

  gcp_project        = "your-actual-gcp-project-id"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention_days     = 365
  bucket_name  bucket_name  bucket_namer"
}

output "attestation" { value = module.data_bucket.compliance_attestation }
output "bucket_url"  { value = module.data_bucket.bucket_url }
output "kms_key_id"  { value = module.data_bucket.kms_key_ioutput "kms_key_id"  { vonoutput "kms_key_id"  { value = modulcat << EOF > terraform/primitives/compliant-gcs-negative/main.tf
terraform {
  required_version = ">= 1.6"
  required_providers {
    google = { source = "hashicorp/google", version = "~> 5.0" }
  }
}

providepr"google" {
  project = "your-actual-gcp-project-id"
  region  = "us-central1"
}

module "data_bucket" {
  sou  sou  sou..  sou  sou  sou..  sou  sou t"

  gcp_project        = "your-actual-gcp-project-id"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention  retention  retention  rame_suffix = "should-never-exist"
}

output "attestation" { value = module.data_bucket.compliance_attestation }
output "bucket_url"  { value output "bucket_url"  { value ou }
output "kms_key_id"  { value = module.data_bucket.kms_key_id }
