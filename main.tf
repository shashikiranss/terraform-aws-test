resource "aws_s3_bucket" "source_bucket" {
  bucket = "source-bucket-sk12345671"
  #acl    = "private"
  #provider = aws.target_account
}

resource "aws_s3_bucket" "target_bucket" {
  bucket = "target-bucket-sk12345671"
  #acl    = "private"
  provider = aws.target_account
}
