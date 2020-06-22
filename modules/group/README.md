# Terraform module for IAM Group

## Using as Module
```hcl
module "iam_group" {
  source     = "../modules/group"
  name       = "S3_ADMINS"
  path       = "/system/"
  policy_arn = [module.iam_policy.arn]
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
| create\_group | Do you want to create Group | `bool` | `true` | no |
| name | (Required) The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-\_.. Group names are not distinguished by case. For example, you cannot create groups named both ADMINS and admins. | `string` | `""` | no |
| path | (Optional, default /) Path in which to create the policy | `string` | `"/"` | no |
| policy\_arn | The ARN of the policy you want to apply | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS to this policy. |
| id | The policy's ID. |
| name | The name of the policy |
| path | The path of the policy in IAM |
| unique\_id | The policy document |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
