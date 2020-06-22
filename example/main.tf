module "iam_policy" {
  source      = "../modules/policy"
  description = var.description
  name        = var.name
  path        = var.path
  policy      = file("${path.module}/s3-policy.json")
}

module "iam_group" {
  source     = "../modules/group"
  name       = "S3_ADMINS"
  path       = "/system/"
  policy_arn = [module.iam_policy.arn]
}

module "iam_user" {
  source = "../modules/user"
  name   = "rajeev.jaggavarapu"
  path   = "/system/"
  groups = [module.iam_group.name]
}

module "iam_role" {
  source             = "../modules/role"
  name               = "ec2-role"
  description        = "Allows EC2 instances to call AWS services on your behalf."
  path               = "/system/"
  assume_role_policy = file("${path.module}/ec2-role.json")
  policy_arn         = [module.iam_policy.arn]
}