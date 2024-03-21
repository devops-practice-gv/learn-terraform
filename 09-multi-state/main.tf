terraform {
  backend "s3" {}
}

resource "null_resource" "test1" {}

output "env" {
  value = var.env
}

variable "env" {}