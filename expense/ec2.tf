resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "db" ? "t2.small" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = merge(var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]
        }

        )
    

}

resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.ing_port
        to_port   = var.ing_port
        protocol  = var.ing_protocol
        cidr_blocks = var.cidr_blocks
    }

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = var.cidr_blocks
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Avinash"
    }

}