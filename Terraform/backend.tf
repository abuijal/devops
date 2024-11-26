terraform {
  backend "s3" {
    bucket = "aburizal"
    key = "server_name/statefile"
    region = "ap-southeast-3"
  }
}  