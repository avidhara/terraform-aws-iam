module "iam_policy" {
    source = "../modules/policy"
    description = var.description
    name = var.name
    path = var.path
    policy = file("${path.module}/s3-policy.json")
}