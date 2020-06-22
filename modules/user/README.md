# Terraform module for IAM policy

## Using as Module
```hcl
module "iam_user" {
  source = "../modules/user"
  name   = "rajeev.jaggavarapu"
  path   = "/system/"
  groups = [module.iam_group.name]
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
| create\_iam\_user | Do you want to create IAM user | `bool` | `true` | no |
| force\_destroy | (Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force\_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed. | `bool` | `false` | no |
| groups | (Required) A list of IAM Groups to add the user to | `list(string)` | `[]` | no |
| name | (Required) The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. | `string` | `""` | no |
| path | (Optional, default /) Path in which to create the policy | `string` | `"/"` | no |
| permissions\_boundary | (Optional) The ARN of the policy that is used to set the permissions boundary for the user. | `string` | `null` | no |
| policy\_arn | The ARN of the policy you want to apply | `list(string)` | `[]` | no |
| tags | Key-value map of tags for the IAM user | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS to this policy. |
| name | The name of the policy |
| unique\_id | The unique ID assigned by AWS. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
