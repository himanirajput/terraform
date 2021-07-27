provider "aws" {
 region = "us-east-2"
}

resource "aws_instance" "s1" {
 ami = "ami-0603cbe34fd08cb81"
 instance_type = "t2.micro"
  tags = {
    Name = "Himani-instance"
    Env = "Prod"
  }
}
output "MY_PUBLIC_IP" {
 value = aws_instance.s1.public_ip
}

