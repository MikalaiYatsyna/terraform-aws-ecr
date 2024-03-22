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

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.42.0 |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Outputs the Amazon Resource Name (ARN) of the created ECR repository. |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | Outputs the AWS account ID where the repository is located. |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | Outputs the URL of the created ECR repository. |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keep_last_images"></a> [keep\_last\_images](#input\_keep\_last\_images) | Specifies the number of untagged images to retain. | `number` | `1` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Defines the name of the repository. | `any` | n/a | yes |


## Resources

- resource.aws_ec2_tag.dummy_tag (main.tf#29)
<!-- END_TF_DOCS -->
