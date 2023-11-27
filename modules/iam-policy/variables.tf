variable "policy_name" {
  type        = string
  description = "Name of the IAM policy"
}

variable "policy_description" {
  type        = string
  description = "Description of the IAM policy"
}

variable "policy_document" {
  type        = string
  description = "IAM policy document in JSON format"
}
