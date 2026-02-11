
# Bloco para exibir o IP público da instância após a criação
output "instance_public_ip" {
  description = "IP público da instância EC2"
  value       = aws_instance.web_server.public_ip
}

# Gera a URL completa do seu site
output "website_url" {
    description = "URL do site provisionado."
    value       = "http://${aws_instance.web_server.public_ip}"
}
