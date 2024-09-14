resource "aws_instance" "ec2-public1" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.network.public1_id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = "key-ec2"
  availability_zone = "${var.region}a"
  associate_public_ip_address = true
tags = {
    Name = "ec2-public1"
}

}

resource "aws_instance" "ec2-public2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.network.public2_id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = "key-ec2"
  availability_zone = "${var.region}b"
    associate_public_ip_address = true

tags = {
    Name = "ec2-public2"
}

}

resource "aws_instance" "ec2-private1" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.network.private1_id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = "key-ec2"
  availability_zone = "${var.region}a"
tags = {
    Name = "ec2-private1"
}

}

resource "aws_instance" "ec2-private2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.network.private2_id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = "key-ec2"
  availability_zone = "${var.region}b"
tags = {
    Name = "ec2-private2"
}
}
