terraform {
  required_providers {
    my-aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "web" {
  provider = "my-aws"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
