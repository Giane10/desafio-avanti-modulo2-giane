# Cria a instância EC2
resource "aws_instance" "web_server" {
    ami           = data.aws_ami.amazon_linux_2.id  # Usa a imagem do AL2
    instance_type = "t2.micro"  # Tamanho da instancia

    # Define o key pair para a instância
    key_name      = aws_key_pair.ec2_key_pair.key_name

    # Associa os 3 Security Groups à instância (HTTP, SSH e Saída)
    vpc_security_group_ids = [
        aws_security_group.http_sg.id,
        aws_security_group.ssh_sg.id,
        aws_security_group.egress_all_sg.id
    ]


    # Associa a permissão padrão
    # Permissões para recursos (como o EC2) usando Roles 
    # em vez de chaves de acesso gravadas no código é uma Melhor Prática de Segurança.
    iam_instance_profile = "LabInstanceProfile"
    
    tags = {
        Name = "WebServer-DVP"
    }
}
