output "bucket_domain_name" {
  value       = local.enabled ? join("", aws_s3_bucket.default.*.bucket_domain_name) : ""
  description = "wiadro"
}



output "bucket_website_domain" {
  value       = join("", aws_s3_bucket_website_configuration.default.*.website_domain, aws_s3_bucket_website_configuration.redirect.*.website_domain)
  description = "The bucket website domain, if website is enabled"
}

output "bucket_website_endpoint" {
  value       = join("", aws_s3_bucket_website_configuration.default.*.website_endpoint, aws_s3_bucket_website_configuration.redirect.*.website_endpoint)
  description = "The bucket website endpoint, if website is enabled"
}

output "bucket_arn" {
  value       = local.enabled ? join("", aws_s3_bucket.default.*.arn) : ""
  description = "Bucket ARN"
}