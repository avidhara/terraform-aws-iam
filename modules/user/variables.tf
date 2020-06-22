variable "create_iam_user" {
  type        = bool
  description = "Do you want to create IAM user"
  default     = true
}

variable "name" {
  type        = string
  description = "(Required) The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces."
  default     = ""
}

variable "path" {
  type        = string
  description = "(Optional, default /) Path in which to create the policy"
  default     = "/"
}

variable "permissions_boundary" {
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
