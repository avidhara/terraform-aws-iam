######## Output of IAM policy
output "policy_id" {
  description = "The policy's ID."
  value       = module.iam_policy.id
}

output "policy_arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = module.iam_policy.arn
}

output "policy_description" {
  description = " The description of the policy"
  value       = module.iam_policy.description
}

output "policy_name" {
  description = "The name of the policy"
  value       = module.iam_policy.name
}

output "policy_path" {
  description = "The path of the policy in IAM"
  value       = module.iam_policy.path
}

output "policy_policy" {
  description = "The policy document"
  value       = module.iam_policy.policy
}

######## Output of IAM Groups
output "group_id" {
  description = "The policy's ID."
  value       = module.iam_group.id
}

output "group_arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = module.iam_group.arn
}

output "group_name" {
  description = "The name of the policy"
  value       = module.iam_group.name
}

output "group_path" {
  description = "The path of the policy in IAM"
  value       = module.iam_group.path
}

output "group_unique_id" {
  description = "The policy document"
  value       = module.iam_group.unique_id
}


######## Output of IAM Users
output "user_arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = module.iam_user.arn
}

output "guser_name" {
  description = "The name of the policy"
  value       = module.iam_user.name
}

output "user_unique_id" {
  description = "The unique ID assigned by AWS."
  value       = module.iam_user.unique_id
}
