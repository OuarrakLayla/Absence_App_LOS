terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "k8s_sg" {
  name        = "k8s-security-group"
  description = "Ports pour Kubernetes"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 30080
    to_port     = 30080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "master" {
  ami                    = "ami-075449515af5df0d1"
  instance_type          = "t3.micro"
  key_name               = "k8s-key"
  vpc_security_group_ids = [aws_security_group.k8s_sg.id]
  tags = { Name = "k8s-master" }
}

resource "aws_instance" "worker" {
  ami                    = "ami-075449515af5df0d1"
  instance_type          = "t3.micro"
  key_name               = "k8s-key"
  vpc_security_group_ids = [aws_security_group.k8s_sg.id]
  tags = { Name = "k8s-worker" }
}