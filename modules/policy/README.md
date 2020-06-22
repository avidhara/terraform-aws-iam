# Terraform module for IAM policy

## Using as Module
```hcl
module "iam_policy" {
    source = "../modules/policy"
    description = var.description
    name = var.name
    path = var.path
    policy = file("${path.module}/s3-policy.json")
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | (Optional, Forces new resource)Description of the IAM policy | `string` | `""` | no |
| name | (Optional, Forces new resource)The name of the policy. If omitted, Terraform will assign a random, unique name | `string` | `""` | no |
| path | (Optional, default /) Path in which to create the policy | `string` | `"/"` | no |
| policy | (Required)The policy document. This is a JSON formatted string. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS to this policy. |
| description | The description of the policy |
| id | The policy's ID. |
| name | The name of the policy |
| path | The path of the policy in IAM |
| policy | The policy document |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
