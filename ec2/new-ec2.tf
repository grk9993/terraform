provider aws{
}

resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.type

  tags = {
    Name = "MyTerraformInstance"
  }
}
