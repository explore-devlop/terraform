variable "name" {
  type        = string
  description = "Name of the security group"
}

variable "description" {
  type        = string
  description = "Description of the security group"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "inbound_ports" {
  type        = list(number)
  description = "List of individual inbound ports"
}


variable "inbound_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for inbound traffic"
}
