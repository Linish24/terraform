resource "aws_instance" "create" {
  bar = "abc"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "other" {
  var = "${aws_instance.create.id}"
  foo = "${aws_instance.create.bar}"
  tags = {
    AWS-terra = "AWS-terra"
  }
}
