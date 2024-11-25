terraform {
  backend "s3" {
    bucket = "aburizal"
    key = "key/key"
    region = "ap-southeast-3"
  }
}  