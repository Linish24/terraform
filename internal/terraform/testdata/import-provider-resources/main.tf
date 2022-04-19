provider "aws" {
  value = "${test_instance.bar.value}"
}

resource "aws_instance" "foo" {
  bar = "value"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "test_instance" "bar" {
  value = "yes"
}
