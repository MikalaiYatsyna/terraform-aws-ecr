## Introduction
Terraform configuration script to set up an Elastic Container Registry (ECR) on AWS.

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
| [aws_ec2_tag.dummy_tag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keep_last_images"></a> [keep\_last\_images](#input\_keep\_last\_images) | Specifies the number of untagged images to retain. | `number` | `1` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Defines the name of the repository. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Outputs the Amazon Resource Name (ARN) of the created ECR repository. |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | Outputs the AWS account ID where the repository is located. |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | Outputs the URL of the created ECR repository. |
<!-- END_TF_DOCS -->