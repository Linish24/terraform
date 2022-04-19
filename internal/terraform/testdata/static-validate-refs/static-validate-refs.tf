terraform {
  required_providers {
    boop = {
      source = "foobar/beep" # intentional mismatch between local name and type
    }
  }
}

resource "aws_instance" "no_count" {
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "count" {
  count = 1
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "boop_instance" "yep" {
}

resource "boop_whatever" "nope" {
}

data "beep" "boop" {
}
