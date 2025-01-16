resource "aws_instance" "instance" {
    ami = var.ami_id
    instance_type = var.instance_name == "db" ? "t2.micro" : "t3.small"

}