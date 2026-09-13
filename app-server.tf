resource "aws_instance" "app" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.web.id]

  key_name = "devops-cicd-key"

  tags = {
    Name = "terraform-app-server"
  }
}