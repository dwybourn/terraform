resource "aws_instance" "section3" {
  ami = "ami-050b8344d77081f4b"
  instance_type = "t2.micro"
  count = "1"
  tags = {
      Name = "secion3"
  }
}
