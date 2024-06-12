resource "aws_instance" "publicas" {
  for_each      = var.maquinas
  ami           = var.ec2_specs.ami
  instance_type = var.ec2_specs.instance_type
  key_name      = data.aws_key_pair.key.key_name
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.security_group_pub_instance.id]
  tags = {
    "Name" = "${each.value}"
  }
  user_data = lookup(local.user_data_map, each.value, file("./scripts/user_data_default.sh"))

  lifecycle {
    replace_triggered_by = [
      aws_security_group.security_group_pub_instance.ingress,
    ]
  }
}

module "bucket" {
  source = "./modules/s3"
  nombrebucket = "mibucket-bla-${local.sufix}"
  tagsbucket = {
    Name = "mybucket${local.sufix}"
  }
}

