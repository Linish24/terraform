# Empty
provider "aws" {}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

module "nested" {
  source = "./submodule"
}
