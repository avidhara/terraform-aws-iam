resource "aws_iam_role" "this" {
  count                 = var.create_iam_role ? 1 : 0
  name                  = var.name
  description           = var.description
  path                  = var.path
  assume_role_policy    = var.assume_role_policy
  permissions_boundary  = var.permissions_boundary
  force_detach_policies = var.force_detach_policies
  max_session_duration  = var.max_session_duration
  tags                  = var.tags
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_iam_role_policy_attachment" "this" {
  count      = length(var.policy_arn) > 0 ? length(var.policy_arn) : 0
  role       = aws_iam_role.this[0].name
  policy_arn = var.policy_arn[count.index]
  depends_on = [
    aws_iam_role.this,
  ]
}
