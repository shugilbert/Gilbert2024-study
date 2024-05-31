output "instance_public_ip" {
    description = "the ip of the Ec2 instance"
  value = "aws_instance.test-server.public_ip"
}
output "instance_creator" {
    description = "the creator of the Ec2 instance"
  value = "gilbert"
}
