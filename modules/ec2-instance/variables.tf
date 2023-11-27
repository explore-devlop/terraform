variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "Key name for the EC2 instance"
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM instance profile for the EC2 instance"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs for the EC2 instance"
}

variable "instance_name" {
  type        = string
  description = "Name of the EC2 instance"
}
