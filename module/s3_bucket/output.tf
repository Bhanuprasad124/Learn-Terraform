output "bucket-policy" {
    value = aws_s3_bucket.bhanubucket.tags
  
}
output "bucket-name" {
    value = aws_s3_bucket.bhanubucket.arn
  
}