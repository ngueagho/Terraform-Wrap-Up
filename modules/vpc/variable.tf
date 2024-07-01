variable "vpc_name"{
    type = string
    default = "roberto_vpc"
}

variable "subneta_id"{
   type = string
   description = "id du subnet a "
}

variable "subnetb_id"{
   type = string
   description = "id du subnet b "
}

variable "vpc_id"{
    type = string
    description = "id du vpc"
}

variable "network_tag_name"{
    type =string
    default = "primary_network_interface"
}

variable "availability_zone"{
    type= string
    default= "us-west-2a"
}

variable "private_ips_for_interface_n1" {
  type        = list(string)
  default = ["172.16.10.100"]
}
variable "private_ips_for_interface_n2" {
  type        = list(string)
  default = ["172.16.10.101"]
}
variable "private_ips_for_interface_n3" {
  type        = list(string)
  default = ["172.16.20.100"]
}
variable "private_ips_for_interface_n4" {
  type        = list(string)
  default = ["172.16.20.101"]
}


variable "subneta_tag_name"{
    type = string
    default = "df-subneta"
}
variable "subnetb_tag_name"{
    type = string
    default = "df-subnetb"
}


variable "cidr_block_vpc"{
    type = string
    default = "172.16.0.0/16"
}
variable "cidr_block_subneta"{
    type = string
    default = "172.16.10.0/24"
}

variable "cidr_block_subnetb"{
    type = string
    default = "172.16.20.0/24"
}