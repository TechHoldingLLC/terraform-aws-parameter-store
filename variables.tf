################################
# parameter-store/variables.tf #
################################

variable "parameters" {
  description = "variable information"
  type        = map(map(string))
}

variable "prefix" {
  description = "prefix that will be used for storing ssm"
  type        = string
}