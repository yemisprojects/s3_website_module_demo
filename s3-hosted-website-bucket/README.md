# AWS S3 Bucket to host a static website

- Terraform module which creates an S3 bucket that can host a static website

## Usage

```hcl
module "website" {
  source = "github.com/yemisprojects/s3_website_module_demo//s3-hosted-website-bucket?ref=v0.0.1"
  
  bucket_name = "demo-bucket-111"

  create_random_suffix = true
  environment = "staging"

  tags = {
    Terraform = "true"
  }

}
```

### Generate Random bucket names

If `create_random_suffix = false`, the bucket name will include a randomly generated string to ensure the provided bucket name is unique. The default value is `false`

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=3.73 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >=3.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.73 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_website_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration) | resource |
| [aws_s3_bucket_policy.allow_public_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_iam_policy_document.allow_public_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [random_pet.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of S3 bucket for the website | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment bucket resides in | `string` | n/a | yes |
| <a name="input_index_document"></a> [index\_document](#input\_index\_document) | Name of index document for the website | `string` | `index.html` | no |
| <a name="input_error_document"></a> [error\_document](#input\_error\_document) | Name of error document for the website) | `string` | `error.html` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Github owner to use when creating webhook | `map(string)` | `{}` | no |
| <a name="input_create_random_suffix"></a> [create\_random\_suffix](#input\_github\_token) | Add random suffix to bucket name | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_id"></a> [bucket\_arn](#output\_bucket\_id) | The id of the bucket |
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | The arn of the bucket |
| <a name="output_bucket_website_endpoint"></a> [bucket\_website\_endpoint](#output\_bucket\_website\_endpoint) | The website endpoint of the domain |
| <a name="output_bucket_website_domain"></a> [bucket\_website\_domain](#output\_bucket\_website\_domain) | Domain of the website endpoint |

