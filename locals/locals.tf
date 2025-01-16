locals {
    ami_id = "ami-09c813fb71547fc4f"
    #instance_type = "t2.micro"
    instance_type = var.instance_name == "db" ? "t2.small" : "t2.micro"
    sg_id = "sg-0db726f06945c7d90"
    
    tags = {
        Name = "locals"
    }
}