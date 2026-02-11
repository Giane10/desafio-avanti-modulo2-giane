variable "meu_ip_publico" {
    type        = string
    description = "Endereço IP público para o Security Group SSH"
    # IMPORTANTE: Substitua pelo seu endereço IP público
    # Para saber o seu IP público, acesse https://www.whatismyip.com/
    default     = "179.220.241.234/32"
}
