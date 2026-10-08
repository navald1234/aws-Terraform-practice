output "bucket_id" {
  description = "Frontend S3 bucket ID"
  value       = aws_s3_bucket.this.id
}
output "bucket_arn" {
  description = "Frontend S3 bucket ARN"
  value       = aws_s3_bucket.this.arn
}
output "bucket_regional_domain_name" {
  description = "Frontend S3 bucket regional domain name"
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}
output "bucket_name" {
  description = "Frontend S3 bucket name"
  value       = aws_s3_bucket.this.bucket
}