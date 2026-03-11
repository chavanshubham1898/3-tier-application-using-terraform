resource "aws_security_group" "project-sg" {
  name = "3-tier-security-group"
  description = "allow SSH, Tomcat, MySQL, HTTP, HTTPS."
  vpc_id = aws_vpc.my-vpc.id
  ingress {
    description = "SSH"
    to_port = 22
    from_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    to_port = 80
    from_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTPS"
    to_port = 443
    from_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TOMCAT"
    to_port = 8080
    from_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "MySQL"
    to_port = 3306
    from_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "project-sg-3-tier"
  }
}