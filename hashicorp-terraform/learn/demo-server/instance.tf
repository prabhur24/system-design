resource "aws_instance" "instance" {
  ami           = local.ami_id
  instance_type = "t2.nano"


  associate_public_ip_address = true

  tags = {
    Name      = "test-instance"
    ManagedBy = "terraform"
  }
  provider = aws.India
}
