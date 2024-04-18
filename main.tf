provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "iapetus_sg" {
  name        = "iapetus_SG"
  description = "Security group for iapetus instance allowing ports 80 and 22"
  vpc_id      = "vpc-d76857bf"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.99.100/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.10.99.100/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "iapetus_SG"
  }
}

resource "aws_instance" "iapetus" {
  ami           = "ami-0a429198077e16051"
  instance_type = "t3.medium"
  key_name      = "wmmc_east2"
  subnet_id     = "subnet-59aa3723"

  associate_public_ip_address = true
  security_groups = [aws_security_group.iapetus_sg.name]
  user_data       = file("${path.module}/user.data")
  
  tags = {
    Name = "iapetus"
  }
}

