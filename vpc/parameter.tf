resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.application_name}/${var.enviornment}/vpc_id"
    type = "String"
    value = module.vpc_roboshop.roboshop_vpc
    
}

resource "aws_ssm_parameter" "public_subnet_id_ssm" {
    name = "/${var.application_name}/${var.enviornment}/public_subnet_id"
    type = "String"
    value = join(", ", module.vpc_roboshop.public_subnet_range)
    
}

resource "aws_ssm_parameter" "private_subnet_id_ssm" {
    name = "/${var.application_name}/${var.enviornment}/private_subnet_id"
    type = "String"
    value = join(", ", module.vpc_roboshop.private_subnet_range)
    
}

resource "aws_ssm_parameter" "database_subnet_id_ssm" {
    name = "/${var.application_name}/${var.enviornment}/database_subnet_id"
    type = "String"
    value = join(", ", module.vpc_roboshop.database_subnet_range)
    
}

