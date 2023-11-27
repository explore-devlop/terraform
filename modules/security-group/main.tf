resource "aws_security_group" "custom" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  // Inbound rules
  dynamic "ingress" {
    for_each = var.inbound_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "-1"
      cidr_blocks = var.inbound_cidr_blocks
    }
  }

  // Outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
