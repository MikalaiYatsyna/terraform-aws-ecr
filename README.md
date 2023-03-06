## Introduction
Terraform module to provision ECR registry in AWS

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.57.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecr"></a> [ecr](#module\_ecr) | terraform-aws-modules/ecr/aws | 1.6.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ecr_pull_through_cache_rule.docker_hub](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_pull_through_cache_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keep_last_images"></a> [keep\_last\_images](#input\_keep\_last\_images) | Number of untagged images to keep | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | n/a |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | n/a |
<!-- END_TF_DOCS -->
