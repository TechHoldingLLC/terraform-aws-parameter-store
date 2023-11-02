###########################
# parameter-store/data.tf #
###########################

locals {
  parameters = flatten([
    for module, parameter in var.parameters : [
      for name, value in parameter : {
        name   = name
        value  = value
        module = module
      }
  ]])
}