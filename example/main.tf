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