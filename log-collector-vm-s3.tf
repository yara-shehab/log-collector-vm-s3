provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "example-vm"
  }

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("my-key-pair.pem")
    host = self.public_ip
  }
}

resource "aws_security_group" "example" {
  name_prefix = "example"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
}
