
output "vpc_id"{
    value = module.vpc.vpc_id
}

output "n1_id"{
    value = module.vpc.n1_id
}
output "n2_id"{
    value = module.vpc.n2_id
}
output "n3_id"{
    value = module.vpc.n3_id
}
output "n4_id"{
    value = module.vpc.n4_id
}

#computer outputs

output "computer1_id" {
    value = module.ec2.computer1_id
}
output "computer2_id" {
    value = module.ec2.computer2_id
}
output "computer3_id" {
    value = module.ec2.computer3_id
}
output "computer4_id" {
    value = module.ec2.computer4_id
}

output "subneta_id"{
   value = module.vpc.subneta_id
}
output "subnetb_id"{
   value = module.vpc.subnetb_id
}

output "aws_ebs_volumea_id"{
    value = module.volumes.aws_ebs_volumea_id
}
output "aws_ebs_volumeb_id"{
    value = module.volumes.aws_ebs_volumeb_id
}
output "aws_ebs_volumec_id"{
    value = module.volumes.aws_ebs_volumec_id
}
output "aws_ebs_volumed_id"{
    value = module.volumes.aws_ebs_volumed_id
}