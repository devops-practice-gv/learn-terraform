resource "aws_instance" "Test1" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
#  subnet_id = "subnet-03974e21a954e3e4b"
}

