variable "virginia_cidr" {
  description = "CIDR VPC Virginia"
  type        = string
}
variable "tags" {
  description = "Tags generales"
  type        = map(string)
}

variable "subnets" {
  description = "Lista de subnets"
  type        = list(string)
}


variable "ec2_specs" {
  description = "Parametros de la instancia"
  type        = map(string)
}


variable "maquinas" {
  description = "value"
  type        = map(string)
  default = {
    "servidorweb" = "apache"
    "basededatos" = "mysql"
  }
}

variable "ingress_ports" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "access_key" {
  
}

variable "secret_key" {
  
}

# variable "name" {
#   description = "The resource name for terraform backend"
#   type        = string
# }

# variable "dynamodb_read_capacity" {
#   description = "The read_capacity value for the DynamoDB table to store lock object"
#   type        = number
# }

# variable "dynamodb_write_capacity" {
#   description = "The write_capacity value for the DynamoDB table to store lock object"
#   type        = number
# }

# variable "s3_versioning" {
#   description = "A configuration to enable object version control"
#   type        = string
# }

# variable "force_destroy" {
#   description = "A boolean that indicates all objects should be deleted without error"
#   type        = bool
# }
