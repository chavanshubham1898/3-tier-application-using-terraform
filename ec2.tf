resource "aws_instance" "jump-server" {
  ami = "ami-0f559c3642608c138"
  instance_type = "t3.micro"
  key_name = "my-key"
  subnet_id = aws_subnet.public-subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.project-sg.id]
  tags = {
    Name = "Jump-server"
  }
}