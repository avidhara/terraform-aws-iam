output "arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = aws_iam_user.this[0].arn
}

output "name" {
  description = "The name of the policy"
  value       = aws_iam_user.this[0].name
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = aws_iam_user.this[0].unique_id
}
