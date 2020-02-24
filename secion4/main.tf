resource "aws_instance" "section3" {
  ami = "ami-050b8344d77081f4b"
  instance_type = var.instance_type
  count = var.number
  tags = {
      Name = var.name
  }
}
