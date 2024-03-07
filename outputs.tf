output "arn" {
  value       = module.ecr.repository_arn
  description = "Outputs the Amazon Resource Name (ARN) of the created ECR repository."
}

output "registry_id" {
  value       = module.ecr.repository_registry_id
  description = "Outputs the AWS account ID where the repository is located."
}

output "repository_url" {
  value       = module.ecr.repository_url
  description = "Outputs the URL of the created ECR repository."
}
