variable "ami_id" {
    type = string
    default = "ami-090d68841c2a28756"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "subnet_id" {
    type = string
    default = "subnet-039d766f011706466"
  
}
variable "instance_count" {
    type = number
    default = 1
  
}
variable "public_ip" {
    type = bool
    default = true
  
}