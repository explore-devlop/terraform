resource "aws_iam_role" "custom_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = var.assume_role_service
      },
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "custom_policies" {
  role       = aws_iam_role.custom_role.name
  policy_arn = var.policy_arns
}
