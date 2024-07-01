#aws_security_group  resource
resource "aws_security_group" "allow_http" {
  name        = var.allow_http_name
  description = var.allow_http_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.allow_http_name
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = var.allow_ssh_name
  description = var.allow_ssh_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.allow_ssh_name
  }
}
