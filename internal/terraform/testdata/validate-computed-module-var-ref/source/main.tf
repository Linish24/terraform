resource "aws_instance" "source" {
  attr = "foo"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "sourceout" {
  value = "${aws_instance.source.attr}"
}
