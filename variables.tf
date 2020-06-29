variable "policy_description" {
  type        = string
  description = "(Optional, Forces new resource)Description of the IAM policy"
  default     = ""
}

variable "policy_name" {
  type        = string
  description = "(Optional, Forces new resource)The name of the policy. If omitted, Terraform will assign a random, unique name"
  default     = ""
}

variable "policy_path" {
  type        = string
  description = "(Optional, default /) Path in which to create the policy"
  default     = "/"
}

variable "policy" {
  type        = string
  description = "(Required)The policy document. This is a JSON formatted string."
  default     = ""
}
######## IAM Groups
variable "create_group" {
  type        = bool
  description = "Do you want to create Group"
  default     = false
}

variable "group_name" {
  type        = string
  description = "(Required) The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. Group names are not distinguished by case. For example, you cannot create groups named both ADMINS and admins."
  default     = ""
}

variable "group_path" {
  type        = string
  description = "(Optional, default /) Path in which to create the policy"
  default     = "/"
}

variable "policy_arn" {
  type        = list(string)
  description = "The ARN of the policy you want to apply"
  default = [

  ]
}

######## IAM Users
variable "create_iam_user" {
  type        = bool
  description = "Do you want to create IAM user"
  default     = false
}

variable "user_name" {
  type        = string
  description = "(Required) The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces."
  default     = ""
}

variable "user_path" {
  type        = string
  description = "(Optional, default /) Path in which to create the policy"
  default     = "/"
}

variable "user_permissions_boundary" {
  type        = string
  description = "(Optional) The ARN of the policy that is used to set the permissions boundary for the user."
  default     = null
}

variable "force_destroy" {
  type        = bool
  description = " (Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Key-value map of tags for the IAM user"
  default = {

  }
}

variable "groups" {
  type        = list(string)
  description = "(Required) A list of IAM Groups to add the user to"
  default = [

  ]
}
