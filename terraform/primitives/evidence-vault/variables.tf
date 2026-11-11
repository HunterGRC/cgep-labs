variable "project_name" {
  type    = string
  default = "cgep-lab"
}

variable "lock_mode" {
  type    = string
  default = "GOVERNANCE"
  validation {
    condition     = contains(["GOVERNANCE", "COMPLIANCE"], var.lock_mode)
    error_message = "lock_mode must be GOVERNANCE or COMPLIANCE."
  }
}

variable "retention_days" {
  type    = number
  default = 1
}
