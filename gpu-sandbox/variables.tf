variable "my_ip" {
  type = string
}

variable "ec2_key_name" {
  type    = string
  default = "<create a key pair and use its name here>"
}

variable "gpus" {
  type = number
  description = "Number of GPU instances to spin up"
  default = 1
}

variable "dev_machines" {
  type = number
  description = "Number of non-GPU instances to spin up"
  default = 0
}

variable "windows_gpu_machines" {
  type = number
  description = "Number of GPU windows instances to spin up"
  default = 1
}

data "aws_region" "current" {}
