terraform {
  backend "s3" {
    bucket = "gv-tf-states"
    key    = "testing/state"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}