variable "vpc_id"{
    description = "id_du_vpc"
    type = string 
}

variable "allow_http_name"{
    type  = string
    default = "allow_http"
}

variable "allow_ssh_name"{
    type  = string
    default = "allow_ssh"
}

variable "allow_http_description"{
    type  = string
    default ="Allow http inbound traffic and all outbound traffic"
}

variable "allow_ssh_description"{
    type  = string
    default = "Allow ssh inbound traffic and all outbound traffic"
}