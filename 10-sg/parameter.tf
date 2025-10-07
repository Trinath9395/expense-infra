resource "aws_ssm_parameter" "mysql_sg_id" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/mysql_sg_id"
  value = module.mysql_sg.sg_id
}

resource "aws_ssm_parameter" "backend_sg_id" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/backend_sg_id"
  value = module.backend_sg.sg_id
}

resource "aws_ssm_parameter" "frontend_sg_id" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/frontend_sg_id"
  value = module.frontend_sg.sg_id 
}

resource "aws_ssm_parameter" "bastion_sg" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/bastion_sg_id"
  value = module.bastion_sg.sg_id 
}

resource "aws_ssm_parameter" "app_alb_sg_id" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/app_alb_sg_id"
  value = module.app_alb_sg.sg_id
}

resource "aws_ssm_parameter" "vpn_sg_id" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/vpn_sg_id"
  value = module.vpn_sg.sg_id
}

resource "aws_ssm_parameter" "web_alb_sg" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/web_alb_sg"
  value = module.web_alb_sg.sg_id 
}