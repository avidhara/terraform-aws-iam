variable "description" {
  type        = string
  description = "(Optional, Forces new resource)Description of the IAM policy"
  default     = ""
}

variable "name" {
  type        = string
  description = "(Optional, Forces new resource)The name of the policy. If omitted, Terraform will assign a random, unique name"
  default     = ""
}

variable "path" {
  type        = string
  description = "(Optional, default /) Path in which to create the policy"
  default     = "/"
}

variable "policy" {
  type        = string
  description = "(Required)The policy document. This is a JSON formatted string."
  default     = ""
}
