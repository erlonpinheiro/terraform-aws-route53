#-----terraform-aws-route-53/variables.tf

variable "public_hosted_zone" {
  description = "Domain or subdomain for which to create public hosted zone."
  default     = ""
}

variable "zone_id" {
  description = "Zone where the record will be created."
  default     = ""
}

variable "record_name" {
  description = "Record Name."
  default     = ""
}

variable "record_type" {
  description = "Record type."
  default     = "A"
}

variable "record_ttl" {
  description = "Record ttl."
  default     = "300"
}

variable "record_value" {
  description = "Record Value."
  default     = ""
}


# -------------------------------------------------------------------------------------------------
# Resource Tagging/Naming
# -------------------------------------------------------------------------------------------------
variable "tags" {
  description = "The resource tags that should be added to all hosted zone resources."
  type        = map
  default     = {}
}

variable "comment" {
  description = "The hosted zone comment that should be added to all hosted zone resources."
  default     = "Managed by Terraform"
}
