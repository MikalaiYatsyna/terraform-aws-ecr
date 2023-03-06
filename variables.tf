variable "repo_name" {
  description = "Repository name"
}

variable "keep_last_images" {
  description = "Number of untagged images to keep"
  default     = 1
}
