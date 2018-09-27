provider "aws" {
<<<<<<< HEAD
  region = "us-east-1"
=======
  region = "us-east-1"
>>>>>>> 39756cf70b580e7acf7b68c7aebbc0568dc8a75e
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20180912"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["366486834717"]
}

resource "aws_instance" "web" {
  ami           = "ami-0f6f33f5e191c9e21"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}