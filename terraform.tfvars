

tags = {
  "env"         = "dev"
  "owner"       = "Angel"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.8.5"
}

ec2_specs = {
  "ami"           = "ami-0aa7d40eeae50c9a9"
  "instance_type" = "t2.micro"
}


ingress_ports = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

# name                    = null
# dynamodb_read_capacity  = "5"
# dynamodb_write_capacity = "5"
# s3_versioning           = "Enabled"
# force_destroy           = true