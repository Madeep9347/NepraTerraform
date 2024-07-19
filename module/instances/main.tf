resource "aws_instance" "web" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id     = var.private_subnet_id
  vpc_security_group_ids = [var.private_sg_id]

  key_name = var.key_name
  tags = {
    Name = "Backend"
  }
}

resource "aws_instance" "db" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id     = var.private_subnet_id
  vpc_security_group_ids = [var.private_sg_id]

  key_name = var.key_name
  tags = {
    Name = "Database"
  }
}

resource "aws_instance" "bastion" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id     = var.public_subnet_id
  vpc_security_group_ids = [var.bastion_sg_id]

  key_name = var.key_name
  tags = {
    Name = "Frontend"
  }
}

resource "aws_instance" "jenkins" {
  ami             = var.ami_id
  instance_type = "t2.large"
  subnet_id     = var.public_subnet_id
 vpc_security_group_ids = [var.jenkins_sg_id]

  key_name = var.key_name
  tags = {
    Name = "Jenkins"
  }
}
