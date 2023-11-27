variable "role_name" {
  type        = string
  description = "Name of the IAM role"
}

variable "assume_role_service" {
  type        = string
  description = "Service that can assume the role"
}

variable "policy_arns" {
  type        = list(string)
  description = "List of policy ARNs to attach to the IAM role"
}
