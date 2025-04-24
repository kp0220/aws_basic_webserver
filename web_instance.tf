resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.generated_key.key_name

  user_data = file("user_data.sh")

  tags = {
    Name = "BasicWebsiteVM"
  }

  vpc_security_group_ids = [aws_security_group.web_sg.id]
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow HTTP and SSH"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create a new SSH key pair
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.my_key.public_key_openssh
}

# Save the private key to a local file
resource "local_file" "private_key" {
  content         = tls_private_key.my_key.private_key_pem
  filename        = "${path.module}/terraform-key.pem"
  file_permission = "0400"
}
