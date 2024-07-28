# output "s3_bucket_name" {
#   value = aws_s3_bucket.bucket.bucket
# }

# output "aws_s3_object" {
#     value =aws_s3_object.object.key
# }
output "aws_dynamodb_table" {
  value = aws_dynamodb_table.resumeTable.name
  
}
