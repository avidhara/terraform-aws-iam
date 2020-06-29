output "id" {
  description = "The policy's ID."
  value       = aws_iam_group.this.*.id
}

output "arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = aws_iam_group.this.*.arn
}

output "name" {
  description = "The name of the policy"
  value       = aws_iam_group.this.*.name
}

output "path" {
  description = "The path of the policy in IAM"
  value       = aws_iam_group.this.*.path
}

output "unique_id" {
  description = "The policy document"
  value       = aws_iam_group.this.*.unique_id
}
