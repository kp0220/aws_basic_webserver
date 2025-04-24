output "instance_ip" {
  value = aws_instance.web.public_ip
}

output "website_url" {
  value = "http://${aws_instance.web.public_dns}"
}

output "ssh_command" {
  value = "ssh -i terraform-key.pem ec2-user@${aws_instance.web.public_ip}"
}

output "private_key_path" {
  description = "Path to the generated private key file"
  value       = local_file.private_key.filename
}
