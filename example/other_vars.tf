variable "shared_credentials_file" {
  type        = string
  description = ""
  default     = "/Users/username/.aws/credentials"
}

variable "profile" {
  type        = string
  description = ""
  default     = null
}

variable "region" {
  type        = string
  description = ""
  default     = "us-west-2"
}

