# maps
resource "aws_instance" "foo" {
  for_each = {
    a = "thing"
    b = "another thing"
    c = "yet another thing"
  }
  num = "3"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

# sets
resource "aws_instance" "bar" {
  for_each = toset([])
  tags = {
    AWS-terra = "AWS-terra"
  }
}
resource "aws_instance" "bar2" {
  for_each = toset(["z", "y", "x"])
  tags = {
    AWS-terra = "AWS-terra"
  }
}

# an empty map should generate no resource
resource "aws_instance" "baz" {
  for_each = {}
  tags = {
    AWS-terra = "AWS-terra"
  }
}

# references
resource "aws_instance" "boo" {
  foo = aws_instance.foo["a"].num
  tags = {
    AWS-terra = "AWS-terra"
  }
}

resource "aws_instance" "bat" {
  for_each = {
    my_key = aws_instance.boo.foo
  }
  foo = each.value
  tags = {
    AWS-terra = "AWS-terra"
  }
}

