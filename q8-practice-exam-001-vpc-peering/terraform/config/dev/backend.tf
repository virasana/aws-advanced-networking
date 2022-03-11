terraform {
  backend "s3" {
    bucket = "ksone-terraform-state"
    key    = "aan-q5-001.tfstate"
    region = "eu-west-2"
  }
}