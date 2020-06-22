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

# resource "aws_iam_group_policy_attachment" "test-attach" {
#   count      = length(var.policy_arn) > 0 ? length(var.policy_arn) : 0
#   group      = aws_iam_group.this[0].name
#   policy_arn = var.policy_arn[count.index]
#   depends_on = [
#     aws_iam_group.this,
#   ]
# }