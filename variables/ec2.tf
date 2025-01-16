resource "aws_instance" "db" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags =  var.tags
}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

  ingress {
    from_port        = var.ing_port
    to_port          = var.ing_port
    protocol         = var.ing_protocol
    cidr_blocks      = var.cidr_blocks
    
  } 
 
  egress {
    from_port        = var.eg_port
    to_port          = var.eg_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    
  } 

  tags = var.sg_tags
}

