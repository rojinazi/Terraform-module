variable "imuser" {
  type    = list(any)
  default = ["rojina", "manu"]
}
variable "create_instance" {
  type    = bool
  default = false
}
variable "instance_count" {
  type    = number
  default = 2
}

