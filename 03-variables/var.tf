# Declare a variable with value

variable "x" {
  default = 100
}

# Declare a variable WITHOUT a value
variable "y" {}

# print the variable
output "y" {
  value = var.y
}