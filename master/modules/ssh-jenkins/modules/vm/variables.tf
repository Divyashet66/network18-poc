variable "project" {}
variable "region" {}
variable "vpc_id" {}
variable "subnet_id" {}
variable "name" {}
variable "machine_type" {}
variable "zone" {}
variable "app_prefix" {}
variable "tags" {}
variable "labels" {}

variable "ssh_pub_key_path" {
  type = string
}

variable "ssh_username" {
  type = string
}

variable "image" {
  type    = string
}

variable "firewall_name" {
  type    = string
}

variable "source_ranges" {
  type    = string
}

variable "ssh_keys" {
  type = list(object({
    publickey = string
    user = string
  }))
  description = "list of public ssh keys that have access to the VM"
  default = [
      {
        user = "niveus"
        publickey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtuI2KuSHSZVbTmGWhQqRslMEq8YMHJLHH1wNQi2wG6oG1EpxkahD6mj4fx4yYO1EWWpUM+PH+J1vOenwoqOS+54FgiCACG5AuVxdR0bW/LFI1L4ISv94wMh7DsJ15R/lxBgMSzcGvUZMFauHWP5wxut+Oe+90SQx2eWxziDK/Ep9Ur4uoW7c/1opzVktjG/6l69mEhqKFlk0+WeQ0PZ/tipYpjmsRwo67PAUwN4f/wh2p1KaIs2XJtKyjQP1lfFpaN28zm65293qCUtyttu0c8Hozh9vhuRTOo0IUJvxrTBy+/3Ge98YFBUCFcr/JdHE3CjA9JUVV3iiHVV9EP+vdMx3oRD22IOwyysHx+Bsoqe+z26H6jhYS1cxN8xtpYrCViTDrKmvFZnoWHwqwjn5qA8dpbMmFhutlbM2oxts9Re70Cs3nw49szalji4js2Mm7bq8r+nLHXcf5OylEktjd3Y+N8NjCEFPmnv8jYibr8aOeGUyZHKxTk4C1gtaxCcc= niveus@IND040100591"
      }
  ]
}