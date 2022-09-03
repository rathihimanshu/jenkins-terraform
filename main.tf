provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "remote" {
    organization = "terrasept22"
    workspaces {
      name = "dev"
    }
  }
}
resource "aws_instance" "terracloud-dev" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  key_name = "5thday"
  tags = {
    Name = "terra-cloud-dev"
  }
}