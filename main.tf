provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "jenkinsbucket-terraform"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_instance" "jenkins-vm" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  key_name = "5thday"
  tags = {
    Name = "jenkins-vm"
  }
}