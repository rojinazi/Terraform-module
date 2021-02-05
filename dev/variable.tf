variable "imuser" {
  type    = list(any)
  default = ["rojina", "manu"]
}
variable "create_instance" {
  type    = bool
  default = true
}
variable "instance_count" {
  type    = number
  default = 1
}