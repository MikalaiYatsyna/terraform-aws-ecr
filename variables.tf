variable "repo_name" {
  description = "Defines the name of the repository."
}

variable "keep_last_images" {
  description = "Specifies the number of untagged images to retain."
  default     = 1
}
