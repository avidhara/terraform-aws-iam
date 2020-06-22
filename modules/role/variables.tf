variable "create_iam_role" {
  type        = bool
  description = "Do you want to create IAM Role"
  default     = true
}

variable "assume_role_policy" {
  type        = string
  description = " (Required) The policy that grants an entity permission to assume the role."
  default     = ""
}

variable "name" {
  type        = string
  description = "(Required) The Role name. The name must consist of upper and lowercase alphanumeric characters with no spaces."
  default     = ""
}


variable "path" {
  type        = string
  description = "(Optional, default /) Path in which to create the policy"
  default     = "/"
}

variable "force_detach_policies" {
  type        = bool
  description = " (Optional) Specifies to force detaching any policies the role has before destroying it. Defaults to false."
  default     = false
}

variable "description" {
  type        = string
  description = "(Optional, Forces new resource)Description of the IAM role"
  default     = ""
}

variable "max_session_duration" {
  type        = number
  description = "(Optional) The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  default     = 3600
}

variable "permissions_boundary" {
  type        = string
  description = "(Optional) The ARN of the policy that is used to set the permissions boundary for the Role."
  default     = null
}


variable "tags" {
  type        = map(string)
  description = "Key-value map of tags for the IAM user"
  default = {

  }
}

variable "policy_arn" {
  type        = list(string)
  description = "The ARN of the policy you want to apply"
  default = [

  ]
}
