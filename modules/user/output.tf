output "arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = aws_iam_user.this.*.arn
}

output "name" {
  description = "The name of the policy"
  value       = aws_iam_user.this.*.name
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = aws_iam_user.this.*.unique_id
}
