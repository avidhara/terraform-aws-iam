module "iam_policy_user_group" {
  source             = "../"
  policy_description = "Access to S3"
  policy_name        = "S3FULLACCESS1"
  policy             = file("${path.module}/s3-policy.json")

  create_group = true
  group_name   = "admin12"
  group_path   = "/"

  create_iam_user = true
  user_name       = "example                                                           "
  user_path       = "/"

}