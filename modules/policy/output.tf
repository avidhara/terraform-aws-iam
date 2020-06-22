output "id" {
  description = "The policy's ID."
  value       = aws_iam_policy.this[0].id
}

output "arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = aws_iam_policy.this[0].arn
}

output "description" {
  description = " The description of the policy"
  value       = aws_iam_policy.this[0].description
}

output "name" {
  description = "The name of the policy"
  value       = aws_iam_policy.this[0].name
}

output "path" {
  description = "The path of the policy in IAM"
  value       = aws_iam_policy.this[0].path
}

output "policy" {
  description = "The policy document"
  value       = aws_iam_policy.this[0].policy
}
