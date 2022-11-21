output "bucket_website_domain" {
  description = "Domain of the website endpoint"
  value = aws_s3_bucket_website_configuration.this.website_domain
}

output "bucket_website_endpoint" {
  description = "The website endpoint of the domain"
  value = aws_s3_bucket_website_configuration.this.website_endpoint
}

output "bucket_arn" {
  description = "The arn of the bucket"
  value = aws_s3_bucket.website.arn
}

output "bucket_id" {
  description = "The id of the bucket"
  value = aws_s3_bucket.website.id
}