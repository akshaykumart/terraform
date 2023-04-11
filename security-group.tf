resource "aws_security_group" "allow_tcp" {
  name        = "allow_tcp"
  description = "Allow TCP inbound traffic"
  tags = {
    Name = "allow_tcp"
  }
}
