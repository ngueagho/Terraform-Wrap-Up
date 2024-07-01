

resource "aws_vpc" "roberto_vpc" {
  cidr_block = var.cidr_block_vpc

  tags = {
    Name = "tf-${var.vpc_name}"
  }
}


resource "aws_subnet" "subneta" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block_subneta
  availability_zone = var.availability_zone

  tags = {
    Name = var.subneta_tag_name
  }

  depends_on = [aws_vpc.roberto_vpc]
}

resource "aws_subnet" "subnetb" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block_subnetb
  availability_zone = var.availability_zone

  tags = {
    Name = var.subnetb_tag_name
  }
  depends_on = [aws_vpc.roberto_vpc]
}




resource "aws_network_interface" "n1" {
  subnet_id   = var.subneta_id
  private_ips =var.private_ips_for_interface_n1

  tags = {
    Name = var.network_tag_name
  }

  depends_on = [aws_subnet.subneta]
}

resource "aws_network_interface" "n2" {
  subnet_id   = var.subneta_id
  private_ips = var.private_ips_for_interface_n2

  tags = {
    Name = var.network_tag_name
  }

  depends_on = [aws_subnet.subneta]
}

resource "aws_network_interface" "n3" {
  subnet_id   = var.subnetb_id
  private_ips = var.private_ips_for_interface_n3

  tags = {
    Name = var.network_tag_name
  }

  depends_on = [aws_subnet.subnetb]
}




resource "aws_network_interface" "n4" {
  subnet_id   = var.subnetb_id
  private_ips = var.private_ips_for_interface_n4

  tags = {
    Name = var.network_tag_name
  }

  depends_on = [aws_subnet.subnetb]
}


















#load_balancer services
/*
resource "aws_lb" "example" {
  name               = "example-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = []
  subnets            = [aws_subnet.subneta.id]

  depends_on = [aws_instance.computer1]
}

resource "aws_lb_target_group" "example" {
  name     = "example-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    port     = "80"
    protocol = "HTTP"
  }
}

resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.example.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.example.arn
  }
}

resource "aws_lb_target_group_attachment" "example" {
  target_group_arn = aws_lb_target_group.example.arn
  target_id        = aws_instance.computer1.id
  port             = 80
}


*/














