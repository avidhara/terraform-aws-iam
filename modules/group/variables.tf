variable "create_group" {
  type        = bool
  description = "Do you want to create Group"
  default     = true
}

variable "name" {
  type        = string
  description = "(Required) The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. Group names are not distinguished by case. For example, you cannot create groups named both ADMINS and admins."
  default     = ""
}

variable "path" {
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
