module "iam_policy" {
  source      = "./modules/policy"
  description = var.policy_description
  name        = var.policy_name
  path        = var.policy_path
  policy      = var.policy
}

module "iam_group" {
  source       = "./modules/group"
  create_group = var.create_group
  name         = var.group_name
  path         = var.group_path
  policy_arn   = local.group_policy
}

module "iam_user" {
  source               = "./modules/user"
  create_iam_user      = var.create_iam_user
  name                 = var.user_name
  path                 = var.user_path
  permissions_boundary = var.user_permissions_boundary
  force_destroy        = var.force_destroy
  tags                 = var.tags
  groups               = local.user_groups
}
