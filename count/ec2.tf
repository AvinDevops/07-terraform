resource "aws_instance" "instances" {
    count = 3
    #count = length(var.instances_names)
    ami = var.ami_id
    instance_type = var.instances_names[count.index] == "db" ? "t2.small" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name = var.instances_names[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allowing ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  } 
 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  } 

  tags = {
    Name = "allow_ssh"
  }
}
