resource "aws_ssm_parameter" "web_alb_certification_arn" {
  type = "String"
  name = "/${var.project_name}/${var.environment}/web_alb_certification_arn"
  value = aws_acm_certificate.expense.arn 
}