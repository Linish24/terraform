resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]
  tags = {
    AWS-terra = "AWS-terra"
  }
}
