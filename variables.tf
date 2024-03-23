variable "repo_name" {
  type = string
  description = "Defines the name of the repository."
}

variable "keep_last_images" {
  type = number
  description = "Specifies the number of untagged images to retain."
  default     = 1
}
