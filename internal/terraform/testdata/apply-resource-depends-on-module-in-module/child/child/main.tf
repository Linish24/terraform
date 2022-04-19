resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
