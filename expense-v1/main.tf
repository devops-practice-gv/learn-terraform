resource "aws_instance" "frontend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
  tags = {
    Name        =  "frontend"
  }
  vpc_security_group_ids = ["sg-092a5a638cd018a6e"]
}

resource "aws_instance" "backend" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
  tags = {
    name        =  "backend"
  }
  vpc_security_group_ids = ["sg-092a5a638cd018a6e"]
}

resource "aws_instance" "mysql" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
  tags = {
    name        =  "mysql"
  }
  vpc_security_group_ids = ["sg-092a5a638cd018a6e"]
}