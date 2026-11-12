variable "gcp_project" { type = string }
variable "github_repo" {
  type        = string
  default     = "HunterGRC/cgep-labs"
  description = "OWNER/REPO that the WIF provider will trust."
}
