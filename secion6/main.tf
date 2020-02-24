resource "aws_instance" "section6" {
  ami = "ami-050b8344d77081f4b"
  instance_type = var.instance_type
  count = var.number
  tags = {
      Name = var.name
  }
}

resource "aws_eip" "section6_ip" {
  vpc = true
  count = var.number
  instance = aws_instance.section6[count.index].id
}

resource "aws_s3_bucket" "section6_bucket" {
  bucket = "dwybourn-${var.name}"
  acl = var.bucket_acl

  depends_on = [aws_instance.section6]
}
