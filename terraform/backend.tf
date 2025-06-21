terraform {
  backend "s3" {
    bucket = "tf-handson-hikaru"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
