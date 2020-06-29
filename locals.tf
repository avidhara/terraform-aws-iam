locals {
  user_groups  = var.create_group ? concat(module.iam_group.name, var.groups) : var.groups
  group_policy = var.policy != "" ? concat(module.iam_policy.arn, var.policy_arn) : var.policy_arn
}
