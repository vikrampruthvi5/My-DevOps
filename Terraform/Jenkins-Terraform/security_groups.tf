resource "aws_security_group" "jenkins_sg" {
  name        = join(var.name, ["Allow_HTTP"])
  description = "Allow WEB inbound traffic"

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.http_cidrs
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = var.http_cidrs
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.http_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.http_cidrs
  }

  tags = merge(var.common_tags, {
    Name = join(var.name, ["jenkins-terraform-sg"])
  })
}