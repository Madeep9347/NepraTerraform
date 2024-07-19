variable "private_subnet_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "private_sg_id" {
  type = string
}

variable "bastion_sg_id" {
  type = string
}
variable "jenkins_sg_id" {
  type        = string
}
variable "key_name" {
  type = string
}
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instances"
  type        = string
}
