variable "n1_id"{
    type = string
    description = "id de linterface reseau"

    
}
variable "n2_id"{
    type = string
    description = "id de linterface reseau"

}
variable "n3_id"{
    type = string
    description = "id de linterface reseau"

}
variable "n4_id"{
    type = string
    description = "id de linterface reseau"

}



variable "instance_type"{
    type =string
    default = "t2.micro"
}

variable "device_index"{
    type = number
    default = 0
}

variable "cpu_credits"{
    type =string
    default = "unlimited"
}

variable "ami"{
    type = string
    default = "ami-005e54dee72cc1d00"
}