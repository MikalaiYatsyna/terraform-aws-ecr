module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "1.7.1"

  repository_type = "public"
  repository_name = var.repo_name

  create_lifecycle_policy = true
  repository_lifecycle_policy = jsonencode({
    rules = [
      {
        rulePriority = 1
        description  = "Keep only ${var.keep_last_images} latest untagged image(s)",
        selection = {
          tagStatus   = "untagged"
          countType   = "imageCountMoreThan",
          countNumber = var.keep_last_images
        }
        action = {
          type = "expire"
        }
      }
    ]
  })
}

# When using modules only, doc is not generating providers section.
# This can be hacked by resource with count 0
resource "aws_ec2_tag" "dummy_tag" {
  count       = 0
  key         = ""
  resource_id = ""
  value       = ""
}