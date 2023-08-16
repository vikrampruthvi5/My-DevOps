# EC2 instance creation
resource "aws_instance" "Jenkins-Instance" {
  ami             = "ami-08a52ddb321b32a8c"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.jenkins_sg.name]
  user_data       = "${file("user_data.sh")}"
  user_data_replace_on_change = true

  tags = merge(var.common_tags,
    { "Name" : join(var.name, ["Ec2-Instance"]) }
  )
}

output "Jenkins_URL" {
  value = join(aws_instance.Jenkins-Instance.public_ip, ["http://", ":8080"])
  # value = aws_instance.Jenkins-Instance.public_ip
}

# Key-Pair Creation
resource "aws_key_pair" "Jenkins-KP" {
  key_name   = join(var.name, ["Keypair"])
  public_key = file("/Users/pruthvi/.ssh/id_rsa.pub")
}

