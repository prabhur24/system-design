resource "aws_instance" "instance" {
  ami           = var.ami_1
  instance_type = var.i_type


  associate_public_ip_address = true

  tags = {
    Name      = "test-instance"
    ManagedBy = "terraform"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.instance.public_ip} > instance_ip.txt"
  }

  #provisioner "remote-exec" {
  #inline = [
  #  "sudo yum update"
  #]
  #}
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello, World!"
  }

  triggers = {
    always_run = "${timestamp()}"
  }

  #depends_on = [aws_instance.instance]
}

# null_resource that has no specific resource to a provider resources
/*
resource "null_resource" "test_instance" {
  ami           = local.ami_id
  instance_type = "t2.nano"


  associate_public_ip_address = true

  tags = {
    Name      = "test-instance-1"
    ManagedBy = "terraform-1"
  }
}
*/
