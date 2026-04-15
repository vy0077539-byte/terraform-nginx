resource "aws_instance" "nginxserver" {
    ami = "ami-0ec10929233384c7f"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true


user_data = <<-EOF
            #!/bin/bash
            apt update -y
            apt install nginx -y
            systemctl start nginx
            systemctl enable nginx
            EOF

  tags = {
    name = "nginxserver"
  }
}
