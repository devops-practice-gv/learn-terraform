terraform {
  backend "s3" {}
}

resource "null_resource" "test" {}

output "env" {
  value = var.env
}

variable "env" {}