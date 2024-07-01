output "vpc_id"{
    value = aws_vpc.roberto_vpc.id
}

output "n1_id"{
    value = aws_network_interface.n1.id
}
output "n2_id"{
    value = aws_network_interface.n2.id
}
output "n3_id"{
    value = aws_network_interface.n3.id
}
output "n4_id"{
    value = aws_network_interface.n4.id
}



output "subneta_id"{
   value = aws_subnet.subneta.id
}
output "subnetb_id"{
   value = aws_subnet.subnetb.id
}