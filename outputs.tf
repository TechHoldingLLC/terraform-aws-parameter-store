##############################
# parameter-store/outputs.tf #
##############################

output "parameter_keys" {
  value = [for parameter in local.parameters : "${var.prefix}/${parameter.module}/${parameter.name}"]
}