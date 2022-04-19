resource "aws_instance" "child" {
  ami = "child"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
