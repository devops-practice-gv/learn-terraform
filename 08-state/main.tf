terraform {
  backend "s3" {

  }
}

resource "null_resource" "test" {}
resource "null_resource" "test2" {}

#
#variable "bucket" {}
#variable "key" {}
#variable "region" {}
