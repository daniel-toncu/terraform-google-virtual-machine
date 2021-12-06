variable "machine_name" {
  type        = string
  description = "(Required) Machine Name."
}

variable "machine_type" {
  type        = string
  description = "(Required) Machine Type."

  default = "f1-micro"
}
