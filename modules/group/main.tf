resource "aws_iam_group" "this" {
  count = var.create_group ? 1 : 0
  name  = var.name
  path  = var.path

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_iam_group_policy_attachment" "test-attach" {
  count      = length(var.policy_arn) > 0 ? length(var.policy_arn) : 0
  group      = aws_iam_group.this[0].name
  policy_arn = var.policy_arn[count.index]
  depends_on = [
    aws_iam_group.this,
  ]
}