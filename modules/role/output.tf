output "arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = aws_iam_role.this[0].arn
}

output "create_date" {
  description = "The creation date of the IAM role"
  value       = aws_iam_role.this[0].create_date
}

output "description" {
  description = "The description of the role"
  value       = aws_iam_role.this[0].description
}

output "id" {
  description = "The name of the role"
  value       = aws_iam_role.this[0].name
}


output "name" {
  description = "The name of the role"
  value       = aws_iam_role.this[0].name
}

output "unique_id" {
  description = "The stable and unique string identifying the role"
  value       = aws_iam_role.this[0].unique_id
}
