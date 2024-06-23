resource "aws_instance" "instance" {
  ami           = data.aws_ami.test.id
  instance_type = var.i_type


  associate_public_ip_address = true

  tags = {
    Name      = "test-instance"
    ManagedBy = "terraform"
  }

  #provisioner "local-exec" {
  #command = "echo ${aws_instance.instance.public_ip} > instance_ip.txt"
  # command = "echo jsonencode(${aws_instance.instance}) > instance_ip.txt"
  #}

  #provisioner "remote-exec" {
  #inline = [
  #  "sudo yum update"
  #]
  #}

  provisioner "remote-exec" {
    inline = ["echo $HOSTNAME > /home/ec2-user/hostname.txt"]

    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }

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


data "aws_ami" "test" {
  filter {
    name = "tag:Name"
    values = ["base-2023"]
  }
  most_recent = true
}
