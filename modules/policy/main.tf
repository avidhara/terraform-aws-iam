resource "aws_iam_policy" "this" {
  count       = var.policy != "" ? 1 : 0
  description = var.description
  name        = var.name
  path        = var.path
  policy      = var.policy
  
  lifecycle {
    create_before_destroy = true
  }
}
