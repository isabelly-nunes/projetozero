provider "aws" {
  region = "us-east-1" # Altere para sua região desejada
}

resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Substitua por uma AMI válida da sua região
  instance_type = "t2.micro"              # Tipo de instância

  tags = {
    Name = "ExampleInstance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}

