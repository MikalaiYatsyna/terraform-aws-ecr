module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "1.6.0"

  repository_type = "public"
  repository_name = "mikalai_yatsyna"

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

resource "aws_ecr_pull_through_cache_rule" "docker_hub" {
  ecr_repository_prefix = "public"
  upstream_registry_url = "registry.hub.docker.com"
}
