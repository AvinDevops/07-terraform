resource "aws_security_group" "dynamic_ports" {

    name = "all_ports"
    description = "allowing 22,80,8080,3306 ports"

    dynamic "ingress"{
        for_each = var.all_ports    
        content {
            from_port = ingress.value["port"]
            to_port   = ingress.value["port"]
            protocol  = ingress.value["protocol"]
            cidr_blocks = ingress.value["cidr_blocks"]
        }
    }


    
    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }

    tags = {
        Name = "allow_all_ports"
        Terraform = true
    }
}