provider "aws" {

}

provider "template" {
  alias = "foo"
}

resource "aws_instance" "foo" {

  monitoring = true
  ebs_optimized = true
}

resource "null_resource" "foo" {

}

terraform {
  required_providers {
    test = {
      source = "hashicorp/test"
    }
  }
}
