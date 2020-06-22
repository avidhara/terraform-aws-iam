resource "aws_iam_user" "this" {
  count                = var.create_iam_user ? 1 : 0
  name                 = var.name
  path                 = var.path
  permissions_boundary = var.permissions_boundary
  force_destroy        = var.force_destroy
  tags                 = var.tags
  lifecycle {
    create_before_destroy = true
  }
}

# Avoid this for Reducing access management complexity
resource "aws_iam_user_policy_attachment" "this" {
  count = length(var.policy_arn) > 0 ? length(var.policy_arn) : 0
  user  = aws_iam_user.this[0].name
  # checkov:skip=CKV_AWS_40: Avoid this 
  policy_arn = var.policy_arn[count.index]
  depends_on = [
    aws_iam_user.this,
  ]
}
# Associating user to a group
resource "aws_iam_user_group_membership" "this" {
  count  = length(var.groups) > 0 ? 1 : 0
  user   = aws_iam_user.this[0].name
  groups = var.groups
}
