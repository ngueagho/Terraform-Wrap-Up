
#les instances EC2.

resource "aws_instance" "computer1" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.n1_id
    device_index         = var.device_index
  }

  credit_specification {
    cpu_credits = var.cpu_credits
  }

    provisioner "local-exec" {
    command    = "echo The server1's IP address is ${self.private_ip}"
    on_failure = continue
  }
}

resource "aws_instance" "computer2" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.n2_id
    device_index         = var.device_index
  }

  credit_specification {
    cpu_credits = var.cpu_credits
  }

    provisioner "local-exec" {
    command    = "echo The server2's IP address is ${self.private_ip}"
    on_failure = continue
  }
}
resource "aws_instance" "computer3" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.n3_id
    device_index         = var.device_index
  }

  credit_specification {
    cpu_credits = var.cpu_credits
  }

    provisioner "local-exec" {
    command    = "echo The server3's IP address is ${self.private_ip}"
    on_failure = continue
  }
}
resource "aws_instance" "computer4" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.n4_id
    device_index         = var.device_index
  }

  credit_specification {
    cpu_credits = var.cpu_credits
  }

  provisioner "local-exec" {
    command    = "echo The server4's IP address is ${self.private_ip}"
    on_failure = continue
  }
}
