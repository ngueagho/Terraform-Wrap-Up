variable "computer1_id" {
    type = string
    description = "id de la machine "
}
variable "computer2_id" {
    type = string
    description = "id de la machine " 
}
variable "computer3_id" {
    type = string
    description = "id de la machine " 
}
variable "computer4_id" {
    type = string
    description = "id de la machine " 
}


variable "aws_ebs_volumea_id"{
    type = string
    description = "aws_ebs_volumea_id"
}
variable "aws_ebs_volumeb_id"{
    type = string
    description = "aws_ebs_volumeb_id"
}
variable "aws_ebs_volumec_id"{
    type = string
    description = "aws_ebs_volumec_id"
}
variable "aws_ebs_volumed_id"{
    type = string
    description = "aws_ebs_volumed_id"
}




variable "availability_zone"{
    type = string
    default = "us-west-2a"
}

variable "size"{
    type = number
    default = 40
}

variable "device_name"{
    type= string
    default = "/dev/sdh"
}

variable "volumea_name"{
    type = string
    default = "robertovolumea"
}
variable "volumeb_name"{
    type = string
    default = "robertovolumeb"
}
variable "volumec_name"{
    type = string
    default = "robertovolumec"
}
variable "volumed_name"{
    type = string
    default = "robertovolumed"
}