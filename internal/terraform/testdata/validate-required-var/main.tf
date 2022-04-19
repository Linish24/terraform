variable "foo" {}

resource "aws_instance" "web" {
  ami = "${var.foo}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
