###########################
# parameter-store/main.tf #
###########################

resource "aws_ssm_parameter" "parameter" {
  for_each = { for parameter in local.parameters : "${parameter.module}.${parameter.name}" => parameter }
  name     = "${var.prefix}/${each.value.module}/${each.value.name}"
  type     = "SecureString"
  value    = each.value.value
}