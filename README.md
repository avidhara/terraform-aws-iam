# Terraform module for IAM

## Using as Module

#### To create IAM Policy

```hcl
module "iam_policy" {
  source = "../"
  policy_description = "Access to S3"
  policy_name = "S3FULLACCESS"
  policy      = file("${path.module}/s3-policy.json")
}
```

#### To create IAM Users

```hcl
module "iam_user" {
  source = "../"
  create_iam_user = true
  user_name = "rajivreddy"
  user_path      = "/"
}
```

#### To create IAM Group

```hcl
module "iam_group" {
  source = "../"
  create_group = true
  group_name = "admin1"
  group_path      = "/"
  policy_arn = module.iam_policy.policy_arn
}
```

#### To create Policy, user and Group

```hcl
module "iam_policy_user_group" {
  source = "../"
  policy_description = "Access to S3"
  policy_name = "S3FULLACCESS1"
  policy      = file("${path.module}/s3-policy.json")

  create_group = true
  group_name = "admin12"
  group_path      = "/"

  create_iam_user = true
  user_name = "rajivreddy"
  user_path      = "/"

}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.24 |
| aws | ~> 2.60 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_group | Do you want to create Group | `bool` | `false` | no |
| create\_iam\_user | Do you want to create IAM user | `bool` | `false` | no |
| force\_destroy | (Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force\_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed. | `bool` | `false` | no |
| group\_name | (Required) The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-\_.. Group names are not distinguished by case. For example, you cannot create groups named both ADMINS and admins. | `string` | `""` | no |
| group\_path | (Optional, default /) Path in which to create the policy | `string` | `"/"` | no |
| groups | (Required) A list of IAM Groups to add the user to | `list(string)` | `[]` | no |
| policy | (Required)The policy document. This is a JSON formatted string. | `string` | `""` | no |
| policy\_arn | The ARN of the policy you want to apply | `list(string)` | `[]` | no |
| policy\_description | (Optional, Forces new resource)Description of the IAM policy | `string` | `""` | no |
| policy\_name | (Optional, Forces new resource)The name of the policy. If omitted, Terraform will assign a random, unique name | `string` | `""` | no |
| policy\_path | (Optional, default /) Path in which to create the policy | `string` | `"/"` | no |
| tags | Key-value map of tags for the IAM user | `map(string)` | `{}` | no |
| user\_name | (Required) The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. | `string` | `""` | no |
| user\_path | (Optional, default /) Path in which to create the policy | `string` | `"/"` | no |
| user\_permissions\_boundary | (Optional) The ARN of the policy that is used to set the permissions boundary for the user. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| group\_arn | The ARN assigned by AWS to this policy. |
| group\_id | The policy's ID. |
| group\_name | The name of the policy |
| group\_path | The path of the policy in IAM |
| group\_unique\_id | The policy document |
| guser\_name | The name of the policy |
| policy\_arn | The ARN assigned by AWS to this policy. |
| policy\_description | The description of the policy |
| policy\_id | The policy's ID. |
| policy\_name | The name of the policy |
| policy\_path | The path of the policy in IAM |
| policy\_policy | The policy document |
| user\_arn | The ARN assigned by AWS to this policy. |
| user\_unique\_id | The unique ID assigned by AWS. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
