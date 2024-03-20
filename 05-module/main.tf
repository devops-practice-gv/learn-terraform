module "demo-1" {
  source = "./demo"
  Name = "Demo-1"
  instance_type = "t3.small"
}

module "demo-2" {
  source = "./demo"
  Name = "Demo-2"
  instance_type = "t3.micro"
}