output "maquina_public_ip" {
  description = "Sacar ips publicas máquinas"
  value       =  [for instance in aws_instance.publicas: instance.public_ip]
}

output "mybucket" {
  value = module.bucket.arn_bucket
}

output "backend" {
  value = module.tfstate.backend
}