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

| Name | Version |
|------|---------|
| terraform | ~> 0.12.24 |
| aws | ~> 2.60 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.60 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| assume\_role\_policy | (Required) The policy that grants an entity permission to assume the role. | `string` | `""` | no |
| create\_iam\_role | Do you want to create IAM Role | `bool` | `true` | no |
| description | (Optional, Forces new resource)Description of the IAM role | `string` | `""` | no |
| force\_detach\_policies | (Optional) Specifies to force detaching any policies the role has before destroying it. Defaults to false. | `bool` | `false` | no |
| max\_session\_duration | (Optional) The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours. | `number` | `3600` | no |
| name | (Required) The Role name. The name must consist of upper and lowercase alphanumeric characters with no spaces. | `string` | `""` | no |
| path | (Optional, default /) Path in which to create the policy | `string` | `"/"` | no |
| permissions\_boundary | (Optional) The ARN of the policy that is used to set the permissions boundary for the Role. | `string` | `null` | no |
| policy\_arn | The ARN of the policy you want to apply | `list(string)` | `[]` | no |
| tags | Key-value map of tags for the IAM user | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS to this policy. |
| create\_date | The creation date of the IAM role |
| description | The description of the role |
| id | The name of the role |
| name | The name of the role |
| unique\_id | The stable and unique string identifying the role |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
