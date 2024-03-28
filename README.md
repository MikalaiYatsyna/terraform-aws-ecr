## Introduction
Terraform configuration script to set up an Elastic Container Registry (ECR) on AWS.

<!-- BEGIN_TF_DOCS -->
  
## Prerequisites

The following IAM policy needs to be attached to the role that is assumed during the creation of module resources:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ecr-public:CreateRepository",
        "ecr-public:DeleteRepository",
        "ecr-public:DescribeRepositories",
        "ecr-public:TagResource",
        "ecr-public:GetRepositoryCatalogData",
        "ecr-public:GetRepositoryPolicy",
        "ecr-public:SetRepositoryPolicy",
        "ecr-public:DeleteRepositoryPolicy",
        "ecr-public:ListTagsForResource"
      ],
      "Resource": "arn:aws:ecr-public:*:${AWS::AccountId}:repository/*"
    }
  ]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.43.0 |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.43.0 |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecr"></a> [ecr](#module\_ecr) | terraform-aws-modules/ecr/aws | 2.0.0 |
## Resources

| Name | Type |
|------|------|
| [aws_ec2_tag.dummy_tag](https://registry.terraform.io/providers/hashicorp/aws/5.43.0/docs/resources/ec2_tag) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keep_last_images"></a> [keep\_last\_images](#input\_keep\_last\_images) | Specifies the number of untagged images to retain. | `number` | `1` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Defines the name of the repository. | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Outputs the Amazon Resource Name (ARN) of the created ECR repository. |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | Outputs the AWS account ID where the repository is located. |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | Outputs the URL of the created ECR repository. |
<!-- END_TF_DOCS -->
