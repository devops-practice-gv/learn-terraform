output "Show_functions" {
  value = upper(var.text)
}

variable "text" {
  default = abc
}