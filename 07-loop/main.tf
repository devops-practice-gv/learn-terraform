#Demo of loop. Looping a resource or loop a MODULE

resource "null_resource" "Test" {
  count = 10
}


resource "null_resource" "Test1" {
  for_each = var.colour-code
}


variable "colour-code" {
  default = {
    red = 31
    blue = 32
  }
}