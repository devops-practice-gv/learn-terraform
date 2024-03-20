resource "aws_instance" "servers" {
  ami           = "ami"
  instance_type = each.value["instance_type"]
  tags = {
    Name        =  each.key
  }
  vpc_security_group_ids = ["security_group"]
  for_each = var.instance_type
}

variable "ami" {
  default = "ami-05f020f5935e52dc4"
}

#variable "instance_type" {
#  default = "t3.small"
#}

variable "security_group" {
  default = "sg-092a5a638cd018a6e"
}

variable "instance_type" {
  default = {
    frontend = {
    instance_type = "t3.micro"
    }
    backend = {
      instance_type = "t3.micro"
    }
    mysql = {
      instance_type = "t3.small"
    }
  }
}