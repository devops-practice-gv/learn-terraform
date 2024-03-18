resource "aws_instance" "frontend" {
  ami           = "ami"
  instance_type = "instance_type"
  tags = {
    Name        =  "frontend"
  }
  vpc_security_group_ids = ["security_group"]
}

resource "aws_instance" "backend" {
  ami           = "ami"
  instance_type = "instance_type"
  tags = {
    Name        =  "backend"
  }
  vpc_security_group_ids = ["security_group"]
}

resource "aws_instance" "mysql" {
  ami           = "ami"
  instance_type = "instance_type"
  tags = {
    Name        =  "mysql"
  }
  vpc_security_group_ids = ["security_group"]
}

variable "ami" {
  default = "ami-05f020f5935e52dc4"
}

variable "instance_type" {
  default = "t3.small"
}

variable "security_group" {
  default = "sg-092a5a638cd018a6e"
}
