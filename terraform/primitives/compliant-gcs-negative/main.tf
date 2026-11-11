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
  source             = "../../modules/compliant-gcs-bucket"
  gcp_project        = "your-actual-gcp-project-id"
  project_label      = "cgep-lab"
  environment  environment  environment  environment  envibucket_name_suffix = "should-never-exist"
}
