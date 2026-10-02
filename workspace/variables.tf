variable "ami_id" {
    type = string
    
  
}

variable "instance_type" {
    type = string
    
  
}

variable "subnet_id" {
    type = string
    
  
}
variable "tags" {
    type = string
  
}

variable "public_ip" {
    type = bool
    default = true
  
}