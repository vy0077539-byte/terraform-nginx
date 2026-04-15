output "instance_public_ip" {
    description = "the public ip address of the ec2 instane"
    value = aws_instance.nginxserver.public_ip
}

output "instance_url" {
    description = "the url to access the nginx server"
  value = "http://${aws_instance.nginxserver.public_ip}"
}
