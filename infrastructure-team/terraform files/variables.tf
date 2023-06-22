variable "aws_access_key_id" {
  type        = string
  default     = ""
  description = "profile access key"
}

variable "aws_secret_access_key" {
  type        = string
  default     = ""
  description = "profile secret key"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
}

variable "subnet_cidr" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "availability_zone" {
  type        = list(any)
  default     = ["eu-west-2a", "eu-west-2b"]
  description = "my availability zones"
}

variable "subnet" {
  default = ["privsubnet1", "privsubnet2"]
}

variable "pubsubnets_cidr" {
  type        = list(any)
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
  description = "description"
}

variable "igw" {
  default = "capstoneinternetgateway"
}

variable "security_groups" {
  default = [80, 443]
}

variable "altnode" {
  type        = string
  default     = "capstone-nodes"
  description = "description"
}

variable "clustername" {
  type        = string
  default     = "capstone-cluster"
  description = "description"
}
