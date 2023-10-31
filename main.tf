resource "aws_instance" "terra_instance" {
  instance_type     = "t3.micro"
  availability_zone = "ap-east-1a"
  key_name = var.key_name
  ami               = "ami-0770b99ae78aaa58f"
  subnet_id         = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name     = "terra_instance_14"
    createBY = "terraform"
  }
}