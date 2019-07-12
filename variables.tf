#-----compute/variables.tf

variable "public_hosted_zone" {
  description = "Domain or subdomain for which to create public hosted zone."
  default     = ""
}


# -------------------------------------------------------------------------------------------------
# Resource Tagging/Naming
# -------------------------------------------------------------------------------------------------
variable "tags" {
  description = "The resource tags that should be added to all hosted zone resources."
  type        = "map"
  default     = {}
}

variable "comment" {
  description = "The hosted zone comment that should be added to all hosted zone resources."
  default     = "Managed by Terraform"
}
