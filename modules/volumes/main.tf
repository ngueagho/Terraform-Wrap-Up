

#aws_ebs_volume creation 
resource "aws_ebs_volume" "robertovolumea" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
    Name = var.volumea_name
  }
}
resource "aws_ebs_volume" "robertovolumeb" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
    Name = var.volumeb_name
  }
}

resource "aws_ebs_volume" "robertovolumec" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
    Name = var.volumec_name
  }
}
resource "aws_ebs_volume" "robertovolumed" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
    Name = var.volumed_name
  }
}








#aws_volume_attachment
resource "aws_volume_attachment" "ebs_att_computer1" {
  device_name = var.device_name
  volume_id   = var.aws_ebs_volumea_id
  instance_id = var.computer1_id

  depends_on = [aws_ebs_volume.robertovolumea]
}

resource "aws_volume_attachment" "ebs_att_computer2" {
  device_name = var.device_name
  volume_id   = var.aws_ebs_volumeb_id
  instance_id = var.computer2_id

  depends_on = [aws_ebs_volume.robertovolumeb] 
}

resource "aws_volume_attachment" "ebs_att_computer3" {
  device_name = var.device_name
  volume_id   = var.aws_ebs_volumec_id
  instance_id = var.computer3_id

  depends_on = [aws_ebs_volume.robertovolumec]
}

resource "aws_volume_attachment" "ebs_att_computer4" {
  device_name = var.device_name
  volume_id   = var.aws_ebs_volumed_id
  instance_id = var.computer4_id

  depends_on = [aws_ebs_volume.robertovolumed]
}
