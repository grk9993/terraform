provider aws{
}

variable type{
}

variable ami_id{
}

resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.type

  tags = {
    Name = "MyTerraformInstance"
  }
}
