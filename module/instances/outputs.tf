output "web_instance_id" {
  value = aws_instance.web.id
}

output "db_instance_id" {
  value = aws_instance.db.id
}

output "bastion_instance_id" {
  value = aws_instance.bastion.id
}

output "jenkins_instance_id" {
  value = aws_instance.jenkins.id
}

output "web_instance_public_ip" {
  value = aws_instance.web.public_ip
}

output "db_instance_public_ip" {
  value = aws_instance.db.public_ip
}

output "bastion_instance_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "jenkins_instance_public_ip" {
  value = aws_instance.jenkins.public_ip
}
