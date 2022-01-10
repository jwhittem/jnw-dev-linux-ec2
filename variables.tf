variable "region" {
  type = string
}

variable "env" {
  type = string
}

variable "name" {
  type = string
}

variable "namespace" {
    type = string
}

variable "instance_type" {
  type = string
}

variable "user_data_base64" {
  type = string
}

variable "ssh_key_pair" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnet" {
  type = string
}

variable "root_volume_size" {
  type = number
}

variable "ami_id" {
  type = string
}

variable "ami_owner" {
  type = string
}
